import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    /// Must come from `.sprites.other.dream_world.front_default`
    required String imageUrl,
    required IList<String> types,
    required int heightDecimetres,
    required int weightHectograms,
    required IList<String> abilities,
    required IMap<String, int> baseStats, // e.g. {"hp": 45, "attack": 49, ...}
  }) = _Pokemon;

  const Pokemon._();

  double get heightInMeters => heightDecimetres / 10;
  double get weightInKg => weightHectograms / 10;
}

@freezed
class PokemonSummary with _$PokemonSummary {
  const factory PokemonSummary({
    required int id,
    required String name,
    required String imageUrl,
    required IList<String> types,
  }) = _PokemonSummary;
}
