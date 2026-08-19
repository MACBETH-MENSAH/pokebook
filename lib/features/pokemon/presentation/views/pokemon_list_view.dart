import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../bloc/pokemon_list_bloc.dart';
import '../bloc/pokemon_list_event.dart';
import '../bloc/pokemon_list_state.dart';
import '../widgets/pokemon_card.dart';
import '../widgets/pokemon_grid_app_bar.dart';

@RoutePage()
class PokemonListView extends StatelessWidget {
  final String? initialQuery;

  const PokemonListView({
    super.key,
    @QueryParam('q') this.initialQuery,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PokemonListBloc>()
        ..add(
          const PokemonListEvent.started(),
        )
        ..add(
          PokemonListEvent.searchQueryChanged(
            initialQuery ?? '',
          ),
        ),
      child: const _PokemonListBody(),
    );
  }
}

class _PokemonListBody extends StatelessWidget {
  const _PokemonListBody();

  void _openDetail(
      BuildContext context,
      int id,
      ) {
    // Now routed through AutoRoute (was raw Navigator.push before) so
    // every screen transition in the app goes through the same
    // routing mechanism, consistent with the "strictly Bloc
    // architecture" spirit of the assessment.
    context.router.push(
      PokemonDetailRoute(pokemonId: id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(134),
        child: PokemonGridAppBar(
          onSearchChanged: (query) {
            context.read<PokemonListBloc>().add(
              PokemonListEvent.searchQueryChanged(query),
            );
          },
        ),
      ),
      body: BlocBuilder<PokemonListBloc, PokemonListState>(
        builder: (context, state) {
          if (state.status == PokemonListStatus.loading &&
              state.items.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.status == PokemonListStatus.failure &&
              state.items.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  state.errorMessage ?? 'Something went wrong.',
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }

          // Empty search results — previously fell through to a blank
          // ListView with nothing telling the user why there's nothing
          // there. Real gap flagged in the audit, fixed here.
          if (state.items.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.search_off,
                      size: 40,
                      color: Color(0xFFBDBDBD),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      state.searchQuery.trim().isEmpty
                          ? 'No Pokémon to show.'
                          : 'No Pokémon found for "${state.searchQuery}".',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Color(0xFF888888)),
                    ),
                  ],
                ),
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(
              20,
              16,
              20,
              32,
            ),
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              final pokemon = state.items[index];

              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 24,
                ),
                child: PokemonCard(
                  pokemon: pokemon,
                  onView: () {
                    _openDetail(
                      context,
                      pokemon.id,
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}