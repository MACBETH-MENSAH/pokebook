// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/pokemon/data/datasources/pokemon_local_datasource.dart'
    as _i703;
import '../../features/pokemon/data/datasources/pokemon_remote_datasource.dart'
    as _i765;
import '../../features/pokemon/data/repositories/pokemon_repository_impl.dart'
    as _i587;
import '../../features/pokemon/domain/repositories/pokemon_repository.dart'
    as _i837;
import '../../features/pokemon/domain/usecases/get_pokemon_detail.dart'
    as _i752;
import '../../features/pokemon/domain/usecases/get_pokemon_page.dart' as _i452;
import '../../features/pokemon/domain/usecases/get_similar_pokemon.dart'
    as _i822;
import '../../features/pokemon/domain/usecases/search_pokemon.dart' as _i746;
import '../../features/pokemon/presentation/bloc/pokemon_detail_bloc.dart'
    as _i115;
import '../../features/pokemon/presentation/bloc/pokemon_list_bloc.dart'
    as _i347;
import '../../features/theme_picker/presentation/bloc/theme_bloc.dart' as _i396;
import '../network/dio_client.dart' as _i667;
import '../network/hive_module.dart' as _i740;
import '../router/app_router.dart' as _i81;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final hiveModule = _$HiveModule();
    final networkModule = _$NetworkModule();
    await gh.factoryAsync<_i986.HiveInterface>(
      () => hiveModule.provideHive(),
      preResolve: true,
    );
    gh.factory<_i396.ThemeBloc>(() => _i396.ThemeBloc());
    gh.lazySingleton<_i361.Dio>(() => networkModule.provideDio());
    gh.lazySingleton<_i81.AppRouter>(() => _i81.AppRouter());
    gh.lazySingleton<_i703.PokemonLocalDataSource>(
        () => _i703.PokemonLocalDataSourceImpl());
    gh.lazySingleton<_i765.PokemonRemoteDataSource>(
        () => _i765.PokemonRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i837.PokemonRepository>(() => _i587.PokemonRepositoryImpl(
          gh<_i765.PokemonRemoteDataSource>(),
          gh<_i703.PokemonLocalDataSource>(),
        ));
    gh.factory<_i752.GetPokemonDetail>(
        () => _i752.GetPokemonDetail(gh<_i837.PokemonRepository>()));
    gh.factory<_i452.GetPokemonPage>(
        () => _i452.GetPokemonPage(gh<_i837.PokemonRepository>()));
    gh.factory<_i746.SearchPokemon>(
        () => _i746.SearchPokemon(gh<_i837.PokemonRepository>()));
    gh.factory<_i822.GetSimilarPokemon>(
        () => _i822.GetSimilarPokemon(gh<_i837.PokemonRepository>()));
    gh.factory<_i115.PokemonDetailBloc>(() => _i115.PokemonDetailBloc(
          gh<_i752.GetPokemonDetail>(),
          gh<_i822.GetSimilarPokemon>(),
        ));
    gh.factory<_i347.PokemonListBloc>(() => _i347.PokemonListBloc(
          gh<_i452.GetPokemonPage>(),
          gh<_i746.SearchPokemon>(),
        ));
    return this;
  }
}

class _$HiveModule extends _i740.HiveModule {}

class _$NetworkModule extends _i667.NetworkModule {}
