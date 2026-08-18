import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../entities/paginated_pokemon.dart';
import '../entities/pokemon.dart';

/// Domain-facing contract. The data layer implements this and is the
/// only place standard exceptions are allowed to be thrown — everything
/// that crosses into the domain/presentation layers is wrapped in
/// [TaskEither<Failure, T>].
abstract class PokemonRepository {
  /// Fetches (and locally caches) a page of Pokémon summaries.
  /// [page] is 1-indexed, [pageSize] controls chunk size for the
  /// custom pagination UI.
  TaskEither<Failure, PaginatedPokemon> getPokemonPage({
    required int page,
    required int pageSize,
  });

  /// Fetches full detail for a single Pokémon, used by the Detail modal.
  TaskEither<Failure, Pokemon> getPokemonDetail(int id);

  /// Filters the already-cached Pokémon list by name (case-insensitive).
  /// Kept synchronous over the cache since this powers live search.
  TaskEither<Failure, PaginatedPokemon> searchCachedPokemon({
    required String query,
    required int page,
    required int pageSize,
  });

  /// Pokémon sharing at least one type with [pokemon], for the "Similar" tab.
  TaskEither<Failure, IList<PokemonSummary>> getSimilarPokemon(Pokemon pokemon);
}
