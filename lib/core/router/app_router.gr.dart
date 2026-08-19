// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    PokemonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PokemonDetailView(
          key: args.key,
          pokemonId: args.pokemonId,
        ),
      );
    },
    PokemonListRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<PokemonListRouteArgs>(
          orElse: () =>
              PokemonListRouteArgs(initialQuery: queryParams.optString('q')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PokemonListView(
          key: args.key,
          initialQuery: args.initialQuery,
        ),
      );
    },
  };
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PokemonDetailView]
class PokemonDetailRoute extends PageRouteInfo<PokemonDetailRouteArgs> {
  PokemonDetailRoute({
    Key? key,
    required int pokemonId,
    List<PageRouteInfo>? children,
  }) : super(
          PokemonDetailRoute.name,
          args: PokemonDetailRouteArgs(
            key: key,
            pokemonId: pokemonId,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailRoute';

  static const PageInfo<PokemonDetailRouteArgs> page =
      PageInfo<PokemonDetailRouteArgs>(name);
}

class PokemonDetailRouteArgs {
  const PokemonDetailRouteArgs({
    this.key,
    required this.pokemonId,
  });

  final Key? key;

  final int pokemonId;

  @override
  String toString() {
    return 'PokemonDetailRouteArgs{key: $key, pokemonId: $pokemonId}';
  }
}

/// generated route for
/// [PokemonListView]
class PokemonListRoute extends PageRouteInfo<PokemonListRouteArgs> {
  PokemonListRoute({
    Key? key,
    String? initialQuery,
    List<PageRouteInfo>? children,
  }) : super(
          PokemonListRoute.name,
          args: PokemonListRouteArgs(
            key: key,
            initialQuery: initialQuery,
          ),
          rawQueryParams: {'q': initialQuery},
          initialChildren: children,
        );

  static const String name = 'PokemonListRoute';

  static const PageInfo<PokemonListRouteArgs> page =
      PageInfo<PokemonListRouteArgs>(name);
}

class PokemonListRouteArgs {
  const PokemonListRouteArgs({
    this.key,
    this.initialQuery,
  });

  final Key? key;

  final String? initialQuery;

  @override
  String toString() {
    return 'PokemonListRouteArgs{key: $key, initialQuery: $initialQuery}';
  }
}
