import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/pokemon/presentation/views/pokemon_detail_view.dart';
import '../../features/pokemon/presentation/views/pokemon_list_view.dart';

part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: PokemonListRoute.page),
    AutoRoute(page: PokemonDetailRoute.page),
  ];
}