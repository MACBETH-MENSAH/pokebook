// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Pokemon {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Must come from `.sprites.other.dream_world.front_default`
  String get imageUrl => throw _privateConstructorUsedError;
  IList<String> get types => throw _privateConstructorUsedError;
  int get heightDecimetres => throw _privateConstructorUsedError;
  int get weightHectograms => throw _privateConstructorUsedError;
  IList<String> get abilities => throw _privateConstructorUsedError;
  IMap<String, int> get baseStats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      IList<String> types,
      int heightDecimetres,
      int weightHectograms,
      IList<String> abilities,
      IMap<String, int> baseStats});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? types = null,
    Object? heightDecimetres = null,
    Object? weightHectograms = null,
    Object? abilities = null,
    Object? baseStats = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      heightDecimetres: null == heightDecimetres
          ? _value.heightDecimetres
          : heightDecimetres // ignore: cast_nullable_to_non_nullable
              as int,
      weightHectograms: null == weightHectograms
          ? _value.weightHectograms
          : weightHectograms // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      baseStats: null == baseStats
          ? _value.baseStats
          : baseStats // ignore: cast_nullable_to_non_nullable
              as IMap<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonImplCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$PokemonImplCopyWith(
          _$PokemonImpl value, $Res Function(_$PokemonImpl) then) =
      __$$PokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      IList<String> types,
      int heightDecimetres,
      int weightHectograms,
      IList<String> abilities,
      IMap<String, int> baseStats});
}

/// @nodoc
class __$$PokemonImplCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$PokemonImpl>
    implements _$$PokemonImplCopyWith<$Res> {
  __$$PokemonImplCopyWithImpl(
      _$PokemonImpl _value, $Res Function(_$PokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? types = null,
    Object? heightDecimetres = null,
    Object? weightHectograms = null,
    Object? abilities = null,
    Object? baseStats = null,
  }) {
    return _then(_$PokemonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      heightDecimetres: null == heightDecimetres
          ? _value.heightDecimetres
          : heightDecimetres // ignore: cast_nullable_to_non_nullable
              as int,
      weightHectograms: null == weightHectograms
          ? _value.weightHectograms
          : weightHectograms // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      baseStats: null == baseStats
          ? _value.baseStats
          : baseStats // ignore: cast_nullable_to_non_nullable
              as IMap<String, int>,
    ));
  }
}

/// @nodoc

class _$PokemonImpl extends _Pokemon {
  const _$PokemonImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.types,
      required this.heightDecimetres,
      required this.weightHectograms,
      required this.abilities,
      required this.baseStats})
      : super._();

  @override
  final int id;
  @override
  final String name;

  /// Must come from `.sprites.other.dream_world.front_default`
  @override
  final String imageUrl;
  @override
  final IList<String> types;
  @override
  final int heightDecimetres;
  @override
  final int weightHectograms;
  @override
  final IList<String> abilities;
  @override
  final IMap<String, int> baseStats;

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, imageUrl: $imageUrl, types: $types, heightDecimetres: $heightDecimetres, weightHectograms: $weightHectograms, abilities: $abilities, baseStats: $baseStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            (identical(other.heightDecimetres, heightDecimetres) ||
                other.heightDecimetres == heightDecimetres) &&
            (identical(other.weightHectograms, weightHectograms) ||
                other.weightHectograms == weightHectograms) &&
            const DeepCollectionEquality().equals(other.abilities, abilities) &&
            (identical(other.baseStats, baseStats) ||
                other.baseStats == baseStats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageUrl,
      const DeepCollectionEquality().hash(types),
      heightDecimetres,
      weightHectograms,
      const DeepCollectionEquality().hash(abilities),
      baseStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      __$$PokemonImplCopyWithImpl<_$PokemonImpl>(this, _$identity);
}

abstract class _Pokemon extends Pokemon {
  const factory _Pokemon(
      {required final int id,
      required final String name,
      required final String imageUrl,
      required final IList<String> types,
      required final int heightDecimetres,
      required final int weightHectograms,
      required final IList<String> abilities,
      required final IMap<String, int> baseStats}) = _$PokemonImpl;
  const _Pokemon._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override

  /// Must come from `.sprites.other.dream_world.front_default`
  String get imageUrl;
  @override
  IList<String> get types;
  @override
  int get heightDecimetres;
  @override
  int get weightHectograms;
  @override
  IList<String> get abilities;
  @override
  IMap<String, int> get baseStats;
  @override
  @JsonKey(ignore: true)
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonSummary {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  IList<String> get types => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonSummaryCopyWith<PokemonSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSummaryCopyWith<$Res> {
  factory $PokemonSummaryCopyWith(
          PokemonSummary value, $Res Function(PokemonSummary) then) =
      _$PokemonSummaryCopyWithImpl<$Res, PokemonSummary>;
  @useResult
  $Res call({int id, String name, String imageUrl, IList<String> types});
}

/// @nodoc
class _$PokemonSummaryCopyWithImpl<$Res, $Val extends PokemonSummary>
    implements $PokemonSummaryCopyWith<$Res> {
  _$PokemonSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as IList<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSummaryImplCopyWith<$Res>
    implements $PokemonSummaryCopyWith<$Res> {
  factory _$$PokemonSummaryImplCopyWith(_$PokemonSummaryImpl value,
          $Res Function(_$PokemonSummaryImpl) then) =
      __$$PokemonSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String imageUrl, IList<String> types});
}

/// @nodoc
class __$$PokemonSummaryImplCopyWithImpl<$Res>
    extends _$PokemonSummaryCopyWithImpl<$Res, _$PokemonSummaryImpl>
    implements _$$PokemonSummaryImplCopyWith<$Res> {
  __$$PokemonSummaryImplCopyWithImpl(
      _$PokemonSummaryImpl _value, $Res Function(_$PokemonSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? types = null,
  }) {
    return _then(_$PokemonSummaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as IList<String>,
    ));
  }
}

/// @nodoc

class _$PokemonSummaryImpl implements _PokemonSummary {
  const _$PokemonSummaryImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.types});

  @override
  final int id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final IList<String> types;

  @override
  String toString() {
    return 'PokemonSummary(id: $id, name: $name, imageUrl: $imageUrl, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl,
      const DeepCollectionEquality().hash(types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSummaryImplCopyWith<_$PokemonSummaryImpl> get copyWith =>
      __$$PokemonSummaryImplCopyWithImpl<_$PokemonSummaryImpl>(
          this, _$identity);
}

abstract class _PokemonSummary implements PokemonSummary {
  const factory _PokemonSummary(
      {required final int id,
      required final String name,
      required final String imageUrl,
      required final IList<String> types}) = _$PokemonSummaryImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  IList<String> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSummaryImplCopyWith<_$PokemonSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
