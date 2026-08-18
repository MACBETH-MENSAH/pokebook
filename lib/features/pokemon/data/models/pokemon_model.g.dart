// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonModelImpl _$$PokemonModelImplFromJson(Map<String, dynamic> json) =>
    _$PokemonModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeSlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) =>
              PokemonAbilitySlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStatSlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites:
          PokemonSpritesModel.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonModelImplToJson(_$PokemonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'abilities': instance.abilities,
      'stats': instance.stats,
      'sprites': instance.sprites,
    };

_$PokemonTypeSlotModelImpl _$$PokemonTypeSlotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeSlotModelImpl(
      slot: (json['slot'] as num).toInt(),
      type:
          NamedApiResourceModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeSlotModelImplToJson(
        _$PokemonTypeSlotModelImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$PokemonAbilitySlotModelImpl _$$PokemonAbilitySlotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonAbilitySlotModelImpl(
      isHidden: json['is_hidden'] as bool,
      ability: NamedApiResourceModel.fromJson(
          json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonAbilitySlotModelImplToJson(
        _$PokemonAbilitySlotModelImpl instance) =>
    <String, dynamic>{
      'is_hidden': instance.isHidden,
      'ability': instance.ability,
    };

_$PokemonStatSlotModelImpl _$$PokemonStatSlotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonStatSlotModelImpl(
      baseStat: (json['base_stat'] as num).toInt(),
      stat:
          NamedApiResourceModel.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonStatSlotModelImplToJson(
        _$PokemonStatSlotModelImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.stat,
    };

_$NamedApiResourceModelImpl _$$NamedApiResourceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NamedApiResourceModelImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$NamedApiResourceModelImplToJson(
        _$NamedApiResourceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$PokemonSpritesModelImpl _$$PokemonSpritesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpritesModelImpl(
      frontDefault: json['frontDefault'] as String?,
      other: json['other'] == null
          ? null
          : PokemonOtherSpritesModel.fromJson(
              json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonSpritesModelImplToJson(
        _$PokemonSpritesModelImpl instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'other': instance.other,
    };

_$PokemonOtherSpritesModelImpl _$$PokemonOtherSpritesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonOtherSpritesModelImpl(
      dreamWorld: json['dream_world'] == null
          ? null
          : DreamWorldSpriteModel.fromJson(
              json['dream_world'] as Map<String, dynamic>),
      officialArtwork: json['official-artwork'] == null
          ? null
          : OfficialArtworkSpriteModel.fromJson(
              json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonOtherSpritesModelImplToJson(
        _$PokemonOtherSpritesModelImpl instance) =>
    <String, dynamic>{
      'dream_world': instance.dreamWorld,
      'official-artwork': instance.officialArtwork,
    };

_$DreamWorldSpriteModelImpl _$$DreamWorldSpriteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DreamWorldSpriteModelImpl(
      frontDefault: json['front_default'] as String?,
    );

Map<String, dynamic> _$$DreamWorldSpriteModelImplToJson(
        _$DreamWorldSpriteModelImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$OfficialArtworkSpriteModelImpl _$$OfficialArtworkSpriteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OfficialArtworkSpriteModelImpl(
      frontDefault: json['front_default'] as String?,
    );

Map<String, dynamic> _$$OfficialArtworkSpriteModelImplToJson(
        _$OfficialArtworkSpriteModelImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$PokemonListItemModelImpl _$$PokemonListItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonListItemModelImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonListItemModelImplToJson(
        _$PokemonListItemModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
