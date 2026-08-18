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
