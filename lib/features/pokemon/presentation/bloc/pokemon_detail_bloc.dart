import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/pokemon.dart';
import '../../domain/usecases/get_pokemon_detail.dart';
import '../../domain/usecases/get_similar_pokemon.dart';

part 'pokemon_detail_bloc.freezed.dart';

enum DetailTab { about, stats, similar }
enum DetailStatus { loading, success, failure }

@freezed
class PokemonDetailEvent with _$PokemonDetailEvent {
  const factory PokemonDetailEvent.requested(int id) = _DetailRequested;
  const factory PokemonDetailEvent.tabChanged(DetailTab tab) = _DetailTabChanged;
}

@freezed
class PokemonDetailState with _$PokemonDetailState {
  const factory PokemonDetailState({
    @Default(DetailStatus.loading) DetailStatus status,
    Pokemon? pokemon,
    @Default(DetailTab.about) DetailTab activeTab,
    @Default(IListConst([])) IList<PokemonSummary> similar,
    String? errorMessage,
  }) = _PokemonDetailState;
}

@injectable
class PokemonDetailBloc extends Bloc<PokemonDetailEvent, PokemonDetailState> {
  final GetPokemonDetail _getPokemonDetail;
  final GetSimilarPokemon _getSimilarPokemon;

  PokemonDetailBloc(this._getPokemonDetail, this._getSimilarPokemon)
      : super(const PokemonDetailState()) {
    on<PokemonDetailEvent>((event, emit) async {
      await event.when(
        requested: (id) => _onRequested(id, emit),
        tabChanged: (tab) async => emit(state.copyWith(activeTab: tab)),
      );
    });
  }

  Future<void> _onRequested(int id, Emitter<PokemonDetailState> emit) async {
    emit(state.copyWith(status: DetailStatus.loading));
    final result = await _getPokemonDetail(id).run();

    await result.match(
          (failure) async => emit(state.copyWith(
        status: DetailStatus.failure,
        errorMessage: failure.displayMessage,
      )),
          (pokemon) async {
        emit(state.copyWith(status: DetailStatus.success, pokemon: pokemon));

        // Similar Pokémon is supplementary — if it fails, the already
        // successful main detail view should still stand.
        final similarResult = await _getSimilarPokemon(pokemon).run();
        similarResult.match(
              (_) {},
              (similar) => emit(state.copyWith(similar: similar)),
        );
      },
    );
  }
}