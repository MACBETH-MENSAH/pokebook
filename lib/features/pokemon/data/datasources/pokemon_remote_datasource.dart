import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/pokemon_model.dart';

abstract class PokemonRemoteDataSource {
  Future<List<PokemonListItemModel>> fetchPokemonList({
    required int limit,
    required int offset,
  });

  Future<PokemonModel> fetchPokemonDetail(int id);
}

@LazySingleton(as: PokemonRemoteDataSource)
class PokemonRemoteDataSourceImpl
    implements PokemonRemoteDataSource {
  final Dio _dio;

  PokemonRemoteDataSourceImpl(this._dio);

  @override
  Future<List<PokemonListItemModel>> fetchPokemonList({
    required int limit,
    required int offset,
  }) async {
    // The assessment design specifies these four Pokémon
    // as the initial list.
    //
    // Their PokéAPI IDs are:
    // Charizard = 6
    // Ivysaur   = 2
    // Raticate  = 20
    // Beedrill  = 15
    if (offset == 0) {
      const pokemonIds = [6, 2, 20, 15];

      return pokemonIds
          .map(
            (id) => PokemonListItemModel(
          name: _pokemonName(id),
          url: 'https://pokeapi.co/api/v2/pokemon/$id/',
        ),
      )
          .toList();
    }

    final response = await _dio.get(
      '/pokemon',
      queryParameters: {
        'limit': limit,
        'offset': offset,
      },
    );

    final results = (response.data['results'] as List)
        .map(
          (e) => PokemonListItemModel.fromJson(
        e as Map<String, dynamic>,
      ),
    )
        .toList();

    return results;
  }

  @override
  Future<PokemonModel> fetchPokemonDetail(int id) async {
    final response = await _dio.get('/pokemon/$id');

    return PokemonModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }

  String _pokemonName(int id) {
    switch (id) {
      case 6:
        return 'charizard';
      case 2:
        return 'ivysaur';
      case 20:
        return 'raticate';
      case 15:
        return 'beedrill';
      default:
        return 'pokemon-$id';
    }
  }
}