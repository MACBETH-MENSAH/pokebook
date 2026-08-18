import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/paginated_pokemon.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_local_datasource.dart';
import '../datasources/pokemon_remote_datasource.dart';
import '../models/pokemon_model.dart';

@LazySingleton(as: PokemonRepository)
class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource _remote;
  final PokemonLocalDataSource _local;

  // Confirmed with the assessment supervisor: the app uses a fixed
  // 4-Pokémon dataset with no pagination UI — this is not a general
  // page-through-hundreds-of-Pokémon app.
  static const int fixedDatasetSize = 4;
  static const int totalCount = fixedDatasetSize;

  PokemonRepositoryImpl(this._remote, this._local);

  String _cacheKey(int page, int pageSize) => 'page_${page}_size_$pageSize';

  @override
  TaskEither<Failure, PaginatedPokemon> getPokemonPage({
    required int page,
    required int pageSize,
  }) {
    return TaskEither.tryCatch(
          () async {
        final cacheKey = _cacheKey(page, pageSize);
        final cached = _local.getCachedPokemonList(cacheKey);
        final items = cached ??
            await _remote.fetchPokemonList(limit: fixedDatasetSize, offset: 0);
        if (cached == null) {
          await _local.cachePokemonList(cacheKey, items);
        }

        // The list endpoint only gives name+url — no types. Since the
        // dataset is fixed at 4 Pokémon, it's cheap to fetch (or reuse
        // the cached) full detail for each one so cards can show real
        // type chips instead of empty ones.
        final summaries = await Future.wait(
          items.map((item) => _summaryWithTypes(item)),
        );

        return PaginatedPokemon(
          items: summaries.toIList(),
          currentPage: page,
          pageSize: pageSize,
          totalCount: totalCount,
        );
      },
      _mapError,
    );
  }

  @override
  TaskEither<Failure, Pokemon> getPokemonDetail(int id) {
    return TaskEither.tryCatch(
          () async {
        final cached = _local.getCachedPokemonDetail(id);
        if (cached != null) return cached.toEntity();

        final model = await _remote.fetchPokemonDetail(id);
        await _local.cachePokemonDetail(model);
        return model.toEntity();
      },
      _mapError,
    );
  }

  @override
  TaskEither<Failure, PaginatedPokemon> searchCachedPokemon({
    required String query,
    required int page,
    required int pageSize,
  }) {
    return TaskEither.tryCatch(
          () async {
        final all = _local.getAllCachedSummaries();
        final normalized = query.trim().toLowerCase();
        final filtered = normalized.isEmpty
            ? all
            : all.where((p) => p.name.toLowerCase().contains(normalized)).toList();
        final start = (page - 1) * pageSize;
        final pageItems = filtered.skip(start).take(pageSize).toList();

        final summaries = await Future.wait(
          pageItems.map((item) => _summaryWithTypes(item)),
        );

        return PaginatedPokemon(
          items: summaries.toIList(),
          currentPage: page,
          pageSize: pageSize,
          totalCount: filtered.length,
        );
      },
      _mapError,
    );
  }

  @override
  TaskEither<Failure, IList<PokemonSummary>> getSimilarPokemon(Pokemon pokemon) {
    return TaskEither.tryCatch(
          () async {
        final all = _local.getAllCachedSummaries();
        final matches = <PokemonSummary>[];
        for (final item in all) {
          if (item.id == pokemon.id) continue;
          final cachedDetail = _local.getCachedPokemonDetail(item.id);
          if (cachedDetail == null) continue;
          final types = cachedDetail.types.map((t) => t.type.name).toSet();
          if (types.intersection(pokemon.types.toSet()).isNotEmpty) {
            matches.add(cachedDetail.toSummary());
          }
          if (matches.length >= 10) break;
        }
        return matches.toIList();
      },
      _mapError,
    );
  }

  // Fetches (or reuses the cached) full detail for a list item just to
  // pull its types + a real sprite, then builds the summary from that.
  Future<PokemonSummary> _summaryWithTypes(PokemonListItemModel item) async {
    var cachedDetail = _local.getCachedPokemonDetail(item.id);
    if (cachedDetail == null) {
      cachedDetail = await _remote.fetchPokemonDetail(item.id);
      await _local.cachePokemonDetail(cachedDetail);
    }
    return _summaryFromListItem(item).copyWith(
      types: cachedDetail.types.map((t) => t.type.name).toIList(),
    );
  }

  PokemonSummary _summaryFromListItem(PokemonListItemModel item) {
    // Using jsDelivr's mirror of the sprites repo (not
    // raw.githubusercontent.com directly) since some large sprite files
    // there are served via Git LFS pointer files instead of real image
    // bytes, which fails to decode / hangs forever.
    return PokemonSummary(
      id: item.id,
      name: item.name,
      imageUrl:
      'https://cdn.jsdelivr.net/gh/PokeAPI/sprites/sprites/pokemon/other/official-artwork/${item.id}.png',
      types: const IListConst([]),
    );
  }

  Failure _mapError(Object error, StackTrace stackTrace) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.connectionError:
          return const Failure.network();
        default:
          final code = error.response?.statusCode;
          if (code == 404) return const Failure.notFound();
          return Failure.server(statusCode: code, message: error.message);
      }
    }
    return Failure.unexpected(message: error.toString());
  }
}