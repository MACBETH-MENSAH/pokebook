import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/usecases/get_pokemon_page.dart';
import '../../domain/usecases/search_pokemon.dart';
import 'pokemon_list_event.dart';
import 'pokemon_list_state.dart';

const _searchDebounce = Duration(milliseconds: 350);

@injectable
class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  final GetPokemonPage _getPokemonPage;
  final SearchPokemon _searchPokemon;

  PokemonListBloc(this._getPokemonPage, this._searchPokemon) : super(const PokemonListState()) {
    on<PokemonListEvent>((event, emit) async {
      await event.when(
        started: () => _onStarted(emit),
        pageRequested: (page) => _onPageRequested(page, emit),
        searchQueryChanged: (query) => _onSearchQueryChanged(query, emit),
      );
    }, transformer: (events, mapper) {
      // Only debounce the search-query-changed branch; page taps and the
      // initial load should fire immediately (restartable to cancel any
      // stale in-flight request).
      return events.switchMap((event) {
        final isSearch = event.maybeWhen(searchQueryChanged: (_) => true, orElse: () => false);
        if (isSearch) {
          return Stream.value(event).debounceTime(_searchDebounce).switchMap(mapper);
        }
        return mapper(event);
      });
    });
  }

  Future<void> _onStarted(Emitter<PokemonListState> emit) => _load(page: 1, emit: emit);

  Future<void> _onPageRequested(int page, Emitter<PokemonListState> emit) =>
      _load(page: page, emit: emit);

  Future<void> _onSearchQueryChanged(String query, Emitter<PokemonListState> emit) {
    emit(state.copyWith(searchQuery: query));
    return _load(page: 1, emit: emit);
  }

  Future<void> _load({required int page, required Emitter<PokemonListState> emit}) async {
    emit(state.copyWith(status: PokemonListStatus.loading));

    final task = state.searchQuery.trim().isEmpty
        ? _getPokemonPage(page: page, pageSize: state.pageSize)
        : _searchPokemon(query: state.searchQuery, page: page, pageSize: state.pageSize);

    final result = await task.run();

    result.match(
      (failure) => emit(state.copyWith(
        status: PokemonListStatus.failure,
        errorMessage: failure.displayMessage,
      )),
      (paginated) => emit(state.copyWith(
        status: PokemonListStatus.success,
        items: paginated.items,
        currentPage: paginated.currentPage,
        totalPages: paginated.totalPages,
        errorMessage: null,
      )),
    );
  }
}
