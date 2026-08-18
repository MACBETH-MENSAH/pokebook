import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/hive_module.dart';
import '../models/pokemon_model.dart';

abstract class PokemonLocalDataSource {
  /// Caches a full page of list-items (name + url) under the given key
  /// (e.g. "page_1_size_20") so custom pagination can be served offline.
  Future<void> cachePokemonList(String cacheKey, List<PokemonListItemModel> items);

  List<PokemonListItemModel>? getCachedPokemonList(String cacheKey);

  /// Every summary ever fetched, flattened — powers local search/filter
  /// across everything the user has already paged through.
  List<PokemonListItemModel> getAllCachedSummaries();

  Future<void> cachePokemonDetail(PokemonModel pokemon);

  PokemonModel? getCachedPokemonDetail(int id);
}

@LazySingleton(as: PokemonLocalDataSource)
class PokemonLocalDataSourceImpl implements PokemonLocalDataSource {
  Box get _listBox => Hive.box(HiveBoxes.pokemonCache);
  Box get _detailBox => Hive.box(HiveBoxes.pokemonDetailCache);

  @override
  Future<void> cachePokemonList(String cacheKey, List<PokemonListItemModel> items) async {
    final encoded = jsonEncode(items.map((e) => {'name': e.name, 'url': e.url}).toList());
    await _listBox.put(cacheKey, encoded);

    // Also merge into a flat "all" index for search.
    final existing = _listBox.get('__all__');
    final Map<String, Map<String, dynamic>> merged = existing != null
        ? {
            for (final e in (jsonDecode(existing as String) as List))
              (e as Map<String, dynamic>)['name'] as String: e,
          }
        : {};
    for (final item in items) {
      merged[item.name] = {'name': item.name, 'url': item.url};
    }
    await _listBox.put('__all__', jsonEncode(merged.values.toList()));
  }

  @override
  List<PokemonListItemModel>? getCachedPokemonList(String cacheKey) {
    final raw = _listBox.get(cacheKey);
    if (raw == null) return null;
    final decoded = jsonDecode(raw as String) as List;
    return decoded
        .map((e) => PokemonListItemModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  List<PokemonListItemModel> getAllCachedSummaries() {
    final raw = _listBox.get('__all__');
    if (raw == null) return [];
    final decoded = jsonDecode(raw as String) as List;
    return decoded
        .map((e) => PokemonListItemModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> cachePokemonDetail(PokemonModel pokemon) async {
    await _detailBox.put(pokemon.id, jsonEncode(pokemon.toJson()));
  }

  @override
  PokemonModel? getCachedPokemonDetail(int id) {
    final raw = _detailBox.get(id);
    if (raw == null) return null;
    return PokemonModel.fromJson(jsonDecode(raw as String) as Map<String, dynamic>);
  }
}
