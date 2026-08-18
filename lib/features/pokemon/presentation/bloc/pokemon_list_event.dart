import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_event.freezed.dart';

@freezed
class PokemonListEvent with _$PokemonListEvent {
  const factory PokemonListEvent.started() = _Started;
  const factory PokemonListEvent.pageRequested(int page) = _PageRequested;
  const factory PokemonListEvent.searchQueryChanged(String query) = _SearchQueryChanged;
}
