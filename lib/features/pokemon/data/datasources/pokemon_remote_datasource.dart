import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/pokemon_model.dart';

abstract class PokemonRemoteDataSource {
  /// Fetches list items for a specific set of Pokémon IDs (e.g. a
  /// curated featured set). Order of [ids] is preserved in the result.
  /// This datasource doesn't know or care *which* ids matter — that's
  /// a decision made above it, in the repository/domain layer.
  Future<List<PokemonListItemModel>> fetchPokemonByIds(List<int> ids);

  /// General list endpoint — kept for a genuine future pagination
  /// feature; not currently exercised by the fixed 4-Pokémon app.
  Future<List<PokemonListItemModel>> fetchPokemonList({
    required int limit,
    required int offset,
  });

  Future<PokemonModel> fetchPokemonDetail(int id);
}

@LazySingleton(as: PokemonRemoteDataSource)
class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final Dio _dio;

  PokemonRemoteDataSourceImpl(this._dio);

  @override
  Future<List<PokemonListItemModel>> fetchPokemonByIds(
      List<int> ids,
      ) async {
    // Name is a placeholder here — the repository always fetches full
    // detail for every item immediately after this call anyway (to get
    // types), and overwrites the name with the real one from that
    // response before anything is cached or displayed.
    return ids
        .map(
          (id) => PokemonListItemModel(
        name: 'pokemon-$id',
        url: 'https://pokeapi.co/api/v2/pokemon/$id/',
      ),
    )
        .toList();
  }

  @override
  Future<List<PokemonListItemModel>> fetchPokemonList({
    required int limit,
    required int offset,
  }) async {
    final response = await _dio.get(
      '/pokemon',
      queryParameters: {
        'limit': limit,
        'offset': offset,
      },
    );

    final results = (response.data['results'] as List)
        .map(
          (e) => PokemonListItemModel.fromJson(
        e as Map<String, dynamic>,
      ),
    )
        .toList();

    return results;
  }

  @override
  Future<PokemonModel> fetchPokemonDetail(int id) async {
    final response = await _dio.get('/pokemon/$id');

    return PokemonModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }
}