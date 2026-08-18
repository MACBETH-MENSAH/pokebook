import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'pokemon.dart';

part 'paginated_pokemon.freezed.dart';

@freezed
class PaginatedPokemon with _$PaginatedPokemon {
  const factory PaginatedPokemon({
    required IList<PokemonSummary> items,
    required int currentPage,
    required int pageSize,
    required int totalCount,
  }) = _PaginatedPokemon;

  const PaginatedPokemon._();

  int get totalPages => (totalCount / pageSize).ceil();
  bool get hasNextPage => currentPage < totalPages;
  bool get hasPreviousPage => currentPage > 1;
}
