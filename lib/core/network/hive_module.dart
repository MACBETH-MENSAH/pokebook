import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

/// Box names used across the app. Centralised so features don't
/// hardcode strings that can drift out of sync.
abstract class HiveBoxes {
  static const pokemonCache = 'pokemon_cache_box';
  static const pokemonDetailCache = 'pokemon_detail_cache_box';
}

@module
abstract class HiveModule {
  @preResolve
  Future<HiveInterface> provideHive() async {
    await Hive.initFlutter();
    // Register TypeAdapters here once generated, e.g.:
    // Hive.registerAdapter(PokemonModelAdapter());
    await Hive.openBox(HiveBoxes.pokemonCache);
    await Hive.openBox(HiveBoxes.pokemonDetailCache);
    return Hive;
  }
}
