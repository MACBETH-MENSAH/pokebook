import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/pokemon.dart';

part 'pokemon_list_state.freezed.dart';

enum PokemonListStatus { initial, loading, success, failure }

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    @Default(PokemonListStatus.initial) PokemonListStatus status,
    @Default(IListConst([])) IList<PokemonSummary> items,
    @Default(1) int currentPage,
    @Default(4) int pageSize,
    @Default(1) int totalPages,
    @Default('') String searchQuery,
    String? errorMessage,
  }) = _PokemonListState;
}
