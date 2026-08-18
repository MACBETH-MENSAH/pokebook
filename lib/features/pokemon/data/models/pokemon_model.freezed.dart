// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return _PokemonModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError; // decimetres
  int get weight => throw _privateConstructorUsedError; // hectograms
  List<PokemonTypeSlotModel> get types => throw _privateConstructorUsedError;
  List<PokemonAbilitySlotModel> get abilities =>
      throw _privateConstructorUsedError;
  List<PokemonStatSlotModel> get stats => throw _privateConstructorUsedError;
  PokemonSpritesModel get sprites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonModelCopyWith<PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
          PokemonModel value, $Res Function(PokemonModel) then) =
      _$PokemonModelCopyWithImpl<$Res, PokemonModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonTypeSlotModel> types,
      List<PokemonAbilitySlotModel> abilities,
      List<PokemonStatSlotModel> stats,
      PokemonSpritesModel sprites});

  $PokemonSpritesModelCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res, $Val extends PokemonModel>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? abilities = null,
    Object? stats = null,
    Object? sprites = null,
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
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlotModel>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilitySlotModel>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatSlotModel>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesModelCopyWith<$Res> get sprites {
    return $PokemonSpritesModelCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonModelImplCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$$PokemonModelImplCopyWith(
          _$PokemonModelImpl value, $Res Function(_$PokemonModelImpl) then) =
      __$$PokemonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonTypeSlotModel> types,
      List<PokemonAbilitySlotModel> abilities,
      List<PokemonStatSlotModel> stats,
      PokemonSpritesModel sprites});

  @override
  $PokemonSpritesModelCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonModelImplCopyWithImpl<$Res>
    extends _$PokemonModelCopyWithImpl<$Res, _$PokemonModelImpl>
    implements _$$PokemonModelImplCopyWith<$Res> {
  __$$PokemonModelImplCopyWithImpl(
      _$PokemonModelImpl _value, $Res Function(_$PokemonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? abilities = null,
    Object? stats = null,
    Object? sprites = null,
  }) {
    return _then(_$PokemonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlotModel>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilitySlotModel>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatSlotModel>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonModelImpl extends _PokemonModel {
  const _$PokemonModelImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required final List<PokemonTypeSlotModel> types,
      required final List<PokemonAbilitySlotModel> abilities,
      required final List<PokemonStatSlotModel> stats,
      required this.sprites})
      : _types = types,
        _abilities = abilities,
        _stats = stats,
        super._();

  factory _$PokemonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
// decimetres
  @override
  final int weight;
// hectograms
  final List<PokemonTypeSlotModel> _types;
// hectograms
  @override
  List<PokemonTypeSlotModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokemonAbilitySlotModel> _abilities;
  @override
  List<PokemonAbilitySlotModel> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<PokemonStatSlotModel> _stats;
  @override
  List<PokemonStatSlotModel> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  final PokemonSpritesModel sprites;

  @override
  String toString() {
    return 'PokemonModel(id: $id, name: $name, height: $height, weight: $weight, types: $types, abilities: $abilities, stats: $stats, sprites: $sprites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            (identical(other.sprites, sprites) || other.sprites == sprites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      weight,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_stats),
      sprites);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      __$$PokemonModelImplCopyWithImpl<_$PokemonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonModel extends PokemonModel {
  const factory _PokemonModel(
      {required final int id,
      required final String name,
      required final int height,
      required final int weight,
      required final List<PokemonTypeSlotModel> types,
      required final List<PokemonAbilitySlotModel> abilities,
      required final List<PokemonStatSlotModel> stats,
      required final PokemonSpritesModel sprites}) = _$PokemonModelImpl;
  const _PokemonModel._() : super._();

  factory _PokemonModel.fromJson(Map<String, dynamic> json) =
      _$PokemonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override // decimetres
  int get weight;
  @override // hectograms
  List<PokemonTypeSlotModel> get types;
  @override
  List<PokemonAbilitySlotModel> get abilities;
  @override
  List<PokemonStatSlotModel> get stats;
  @override
  PokemonSpritesModel get sprites;
  @override
  @JsonKey(ignore: true)
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeSlotModel _$PokemonTypeSlotModelFromJson(Map<String, dynamic> json) {
  return _PokemonTypeSlotModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeSlotModel {
  int get slot => throw _privateConstructorUsedError;
  NamedApiResourceModel get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeSlotModelCopyWith<PokemonTypeSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeSlotModelCopyWith<$Res> {
  factory $PokemonTypeSlotModelCopyWith(PokemonTypeSlotModel value,
          $Res Function(PokemonTypeSlotModel) then) =
      _$PokemonTypeSlotModelCopyWithImpl<$Res, PokemonTypeSlotModel>;
  @useResult
  $Res call({int slot, NamedApiResourceModel type});

  $NamedApiResourceModelCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeSlotModelCopyWithImpl<$Res,
        $Val extends PokemonTypeSlotModel>
    implements $PokemonTypeSlotModelCopyWith<$Res> {
  _$PokemonTypeSlotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResourceModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceModelCopyWith<$Res> get type {
    return $NamedApiResourceModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeSlotModelImplCopyWith<$Res>
    implements $PokemonTypeSlotModelCopyWith<$Res> {
  factory _$$PokemonTypeSlotModelImplCopyWith(_$PokemonTypeSlotModelImpl value,
          $Res Function(_$PokemonTypeSlotModelImpl) then) =
      __$$PokemonTypeSlotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, NamedApiResourceModel type});

  @override
  $NamedApiResourceModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeSlotModelImplCopyWithImpl<$Res>
    extends _$PokemonTypeSlotModelCopyWithImpl<$Res, _$PokemonTypeSlotModelImpl>
    implements _$$PokemonTypeSlotModelImplCopyWith<$Res> {
  __$$PokemonTypeSlotModelImplCopyWithImpl(_$PokemonTypeSlotModelImpl _value,
      $Res Function(_$PokemonTypeSlotModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeSlotModelImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResourceModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeSlotModelImpl implements _PokemonTypeSlotModel {
  const _$PokemonTypeSlotModelImpl({required this.slot, required this.type});

  factory _$PokemonTypeSlotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeSlotModelImplFromJson(json);

  @override
  final int slot;
  @override
  final NamedApiResourceModel type;

  @override
  String toString() {
    return 'PokemonTypeSlotModel(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeSlotModelImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeSlotModelImplCopyWith<_$PokemonTypeSlotModelImpl>
      get copyWith =>
          __$$PokemonTypeSlotModelImplCopyWithImpl<_$PokemonTypeSlotModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeSlotModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeSlotModel implements PokemonTypeSlotModel {
  const factory _PokemonTypeSlotModel(
      {required final int slot,
      required final NamedApiResourceModel type}) = _$PokemonTypeSlotModelImpl;

  factory _PokemonTypeSlotModel.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeSlotModelImpl.fromJson;

  @override
  int get slot;
  @override
  NamedApiResourceModel get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeSlotModelImplCopyWith<_$PokemonTypeSlotModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokemonAbilitySlotModel _$PokemonAbilitySlotModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonAbilitySlotModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilitySlotModel {
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  NamedApiResourceModel get ability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonAbilitySlotModelCopyWith<PokemonAbilitySlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilitySlotModelCopyWith<$Res> {
  factory $PokemonAbilitySlotModelCopyWith(PokemonAbilitySlotModel value,
          $Res Function(PokemonAbilitySlotModel) then) =
      _$PokemonAbilitySlotModelCopyWithImpl<$Res, PokemonAbilitySlotModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_hidden') bool isHidden,
      NamedApiResourceModel ability});

  $NamedApiResourceModelCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokemonAbilitySlotModelCopyWithImpl<$Res,
        $Val extends PokemonAbilitySlotModel>
    implements $PokemonAbilitySlotModelCopyWith<$Res> {
  _$PokemonAbilitySlotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as NamedApiResourceModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceModelCopyWith<$Res> get ability {
    return $NamedApiResourceModelCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonAbilitySlotModelImplCopyWith<$Res>
    implements $PokemonAbilitySlotModelCopyWith<$Res> {
  factory _$$PokemonAbilitySlotModelImplCopyWith(
          _$PokemonAbilitySlotModelImpl value,
          $Res Function(_$PokemonAbilitySlotModelImpl) then) =
      __$$PokemonAbilitySlotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_hidden') bool isHidden,
      NamedApiResourceModel ability});

  @override
  $NamedApiResourceModelCopyWith<$Res> get ability;
}

/// @nodoc
class __$$PokemonAbilitySlotModelImplCopyWithImpl<$Res>
    extends _$PokemonAbilitySlotModelCopyWithImpl<$Res,
        _$PokemonAbilitySlotModelImpl>
    implements _$$PokemonAbilitySlotModelImplCopyWith<$Res> {
  __$$PokemonAbilitySlotModelImplCopyWithImpl(
      _$PokemonAbilitySlotModelImpl _value,
      $Res Function(_$PokemonAbilitySlotModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? ability = null,
  }) {
    return _then(_$PokemonAbilitySlotModelImpl(
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as NamedApiResourceModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAbilitySlotModelImpl implements _PokemonAbilitySlotModel {
  const _$PokemonAbilitySlotModelImpl(
      {@JsonKey(name: 'is_hidden') required this.isHidden,
      required this.ability});

  factory _$PokemonAbilitySlotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAbilitySlotModelImplFromJson(json);

  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  final NamedApiResourceModel ability;

  @override
  String toString() {
    return 'PokemonAbilitySlotModel(isHidden: $isHidden, ability: $ability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilitySlotModelImpl &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isHidden, ability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilitySlotModelImplCopyWith<_$PokemonAbilitySlotModelImpl>
      get copyWith => __$$PokemonAbilitySlotModelImplCopyWithImpl<
          _$PokemonAbilitySlotModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAbilitySlotModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonAbilitySlotModel implements PokemonAbilitySlotModel {
  const factory _PokemonAbilitySlotModel(
          {@JsonKey(name: 'is_hidden') required final bool isHidden,
          required final NamedApiResourceModel ability}) =
      _$PokemonAbilitySlotModelImpl;

  factory _PokemonAbilitySlotModel.fromJson(Map<String, dynamic> json) =
      _$PokemonAbilitySlotModelImpl.fromJson;

  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  NamedApiResourceModel get ability;
  @override
  @JsonKey(ignore: true)
  _$$PokemonAbilitySlotModelImplCopyWith<_$PokemonAbilitySlotModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokemonStatSlotModel _$PokemonStatSlotModelFromJson(Map<String, dynamic> json) {
  return _PokemonStatSlotModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatSlotModel {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  NamedApiResourceModel get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonStatSlotModelCopyWith<PokemonStatSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatSlotModelCopyWith<$Res> {
  factory $PokemonStatSlotModelCopyWith(PokemonStatSlotModel value,
          $Res Function(PokemonStatSlotModel) then) =
      _$PokemonStatSlotModelCopyWithImpl<$Res, PokemonStatSlotModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, NamedApiResourceModel stat});

  $NamedApiResourceModelCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatSlotModelCopyWithImpl<$Res,
        $Val extends PokemonStatSlotModel>
    implements $PokemonStatSlotModelCopyWith<$Res> {
  _$PokemonStatSlotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as NamedApiResourceModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceModelCopyWith<$Res> get stat {
    return $NamedApiResourceModelCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonStatSlotModelImplCopyWith<$Res>
    implements $PokemonStatSlotModelCopyWith<$Res> {
  factory _$$PokemonStatSlotModelImplCopyWith(_$PokemonStatSlotModelImpl value,
          $Res Function(_$PokemonStatSlotModelImpl) then) =
      __$$PokemonStatSlotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat, NamedApiResourceModel stat});

  @override
  $NamedApiResourceModelCopyWith<$Res> get stat;
}

/// @nodoc
class __$$PokemonStatSlotModelImplCopyWithImpl<$Res>
    extends _$PokemonStatSlotModelCopyWithImpl<$Res, _$PokemonStatSlotModelImpl>
    implements _$$PokemonStatSlotModelImplCopyWith<$Res> {
  __$$PokemonStatSlotModelImplCopyWithImpl(_$PokemonStatSlotModelImpl _value,
      $Res Function(_$PokemonStatSlotModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_$PokemonStatSlotModelImpl(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as NamedApiResourceModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatSlotModelImpl implements _PokemonStatSlotModel {
  const _$PokemonStatSlotModelImpl(
      {@JsonKey(name: 'base_stat') required this.baseStat, required this.stat});

  factory _$PokemonStatSlotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatSlotModelImplFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final NamedApiResourceModel stat;

  @override
  String toString() {
    return 'PokemonStatSlotModel(baseStat: $baseStat, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatSlotModelImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatSlotModelImplCopyWith<_$PokemonStatSlotModelImpl>
      get copyWith =>
          __$$PokemonStatSlotModelImplCopyWithImpl<_$PokemonStatSlotModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatSlotModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonStatSlotModel implements PokemonStatSlotModel {
  const factory _PokemonStatSlotModel(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final NamedApiResourceModel stat}) = _$PokemonStatSlotModelImpl;

  factory _PokemonStatSlotModel.fromJson(Map<String, dynamic> json) =
      _$PokemonStatSlotModelImpl.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  NamedApiResourceModel get stat;
  @override
  @JsonKey(ignore: true)
  _$$PokemonStatSlotModelImplCopyWith<_$PokemonStatSlotModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NamedApiResourceModel _$NamedApiResourceModelFromJson(
    Map<String, dynamic> json) {
  return _NamedApiResourceModel.fromJson(json);
}

/// @nodoc
mixin _$NamedApiResourceModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamedApiResourceModelCopyWith<NamedApiResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedApiResourceModelCopyWith<$Res> {
  factory $NamedApiResourceModelCopyWith(NamedApiResourceModel value,
          $Res Function(NamedApiResourceModel) then) =
      _$NamedApiResourceModelCopyWithImpl<$Res, NamedApiResourceModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$NamedApiResourceModelCopyWithImpl<$Res,
        $Val extends NamedApiResourceModel>
    implements $NamedApiResourceModelCopyWith<$Res> {
  _$NamedApiResourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NamedApiResourceModelImplCopyWith<$Res>
    implements $NamedApiResourceModelCopyWith<$Res> {
  factory _$$NamedApiResourceModelImplCopyWith(
          _$NamedApiResourceModelImpl value,
          $Res Function(_$NamedApiResourceModelImpl) then) =
      __$$NamedApiResourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$NamedApiResourceModelImplCopyWithImpl<$Res>
    extends _$NamedApiResourceModelCopyWithImpl<$Res,
        _$NamedApiResourceModelImpl>
    implements _$$NamedApiResourceModelImplCopyWith<$Res> {
  __$$NamedApiResourceModelImplCopyWithImpl(_$NamedApiResourceModelImpl _value,
      $Res Function(_$NamedApiResourceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$NamedApiResourceModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamedApiResourceModelImpl implements _NamedApiResourceModel {
  const _$NamedApiResourceModelImpl({required this.name, required this.url});

  factory _$NamedApiResourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamedApiResourceModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'NamedApiResourceModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamedApiResourceModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamedApiResourceModelImplCopyWith<_$NamedApiResourceModelImpl>
      get copyWith => __$$NamedApiResourceModelImplCopyWithImpl<
          _$NamedApiResourceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamedApiResourceModelImplToJson(
      this,
    );
  }
}

abstract class _NamedApiResourceModel implements NamedApiResourceModel {
  const factory _NamedApiResourceModel(
      {required final String name,
      required final String url}) = _$NamedApiResourceModelImpl;

  factory _NamedApiResourceModel.fromJson(Map<String, dynamic> json) =
      _$NamedApiResourceModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$NamedApiResourceModelImplCopyWith<_$NamedApiResourceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokemonSpritesModel _$PokemonSpritesModelFromJson(Map<String, dynamic> json) {
  return _PokemonSpritesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpritesModel {
  String? get frontDefault => throw _privateConstructorUsedError;
  PokemonOtherSpritesModel? get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpritesModelCopyWith<PokemonSpritesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesModelCopyWith<$Res> {
  factory $PokemonSpritesModelCopyWith(
          PokemonSpritesModel value, $Res Function(PokemonSpritesModel) then) =
      _$PokemonSpritesModelCopyWithImpl<$Res, PokemonSpritesModel>;
  @useResult
  $Res call({String? frontDefault, PokemonOtherSpritesModel? other});

  $PokemonOtherSpritesModelCopyWith<$Res>? get other;
}

/// @nodoc
class _$PokemonSpritesModelCopyWithImpl<$Res, $Val extends PokemonSpritesModel>
    implements $PokemonSpritesModelCopyWith<$Res> {
  _$PokemonSpritesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as PokemonOtherSpritesModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonOtherSpritesModelCopyWith<$Res>? get other {
    if (_value.other == null) {
      return null;
    }

    return $PokemonOtherSpritesModelCopyWith<$Res>(_value.other!, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpritesModelImplCopyWith<$Res>
    implements $PokemonSpritesModelCopyWith<$Res> {
  factory _$$PokemonSpritesModelImplCopyWith(_$PokemonSpritesModelImpl value,
          $Res Function(_$PokemonSpritesModelImpl) then) =
      __$$PokemonSpritesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? frontDefault, PokemonOtherSpritesModel? other});

  @override
  $PokemonOtherSpritesModelCopyWith<$Res>? get other;
}

/// @nodoc
class __$$PokemonSpritesModelImplCopyWithImpl<$Res>
    extends _$PokemonSpritesModelCopyWithImpl<$Res, _$PokemonSpritesModelImpl>
    implements _$$PokemonSpritesModelImplCopyWith<$Res> {
  __$$PokemonSpritesModelImplCopyWithImpl(_$PokemonSpritesModelImpl _value,
      $Res Function(_$PokemonSpritesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? other = freezed,
  }) {
    return _then(_$PokemonSpritesModelImpl(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as PokemonOtherSpritesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpritesModelImpl implements _PokemonSpritesModel {
  const _$PokemonSpritesModelImpl({this.frontDefault, this.other});

  factory _$PokemonSpritesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpritesModelImplFromJson(json);

  @override
  final String? frontDefault;
  @override
  final PokemonOtherSpritesModel? other;

  @override
  String toString() {
    return 'PokemonSpritesModel(frontDefault: $frontDefault, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpritesModelImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, other);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpritesModelImplCopyWith<_$PokemonSpritesModelImpl> get copyWith =>
      __$$PokemonSpritesModelImplCopyWithImpl<_$PokemonSpritesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpritesModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpritesModel implements PokemonSpritesModel {
  const factory _PokemonSpritesModel(
      {final String? frontDefault,
      final PokemonOtherSpritesModel? other}) = _$PokemonSpritesModelImpl;

  factory _PokemonSpritesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpritesModelImpl.fromJson;

  @override
  String? get frontDefault;
  @override
  PokemonOtherSpritesModel? get other;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpritesModelImplCopyWith<_$PokemonSpritesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonOtherSpritesModel _$PokemonOtherSpritesModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonOtherSpritesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonOtherSpritesModel {
  @JsonKey(name: 'dream_world')
  DreamWorldSpriteModel? get dreamWorld => throw _privateConstructorUsedError;
  @JsonKey(name: 'official-artwork')
  OfficialArtworkSpriteModel? get officialArtwork =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonOtherSpritesModelCopyWith<PokemonOtherSpritesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonOtherSpritesModelCopyWith<$Res> {
  factory $PokemonOtherSpritesModelCopyWith(PokemonOtherSpritesModel value,
          $Res Function(PokemonOtherSpritesModel) then) =
      _$PokemonOtherSpritesModelCopyWithImpl<$Res, PokemonOtherSpritesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dream_world') DreamWorldSpriteModel? dreamWorld,
      @JsonKey(name: 'official-artwork')
      OfficialArtworkSpriteModel? officialArtwork});

  $DreamWorldSpriteModelCopyWith<$Res>? get dreamWorld;
  $OfficialArtworkSpriteModelCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class _$PokemonOtherSpritesModelCopyWithImpl<$Res,
        $Val extends PokemonOtherSpritesModel>
    implements $PokemonOtherSpritesModelCopyWith<$Res> {
  _$PokemonOtherSpritesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamWorld = freezed,
    Object? officialArtwork = freezed,
  }) {
    return _then(_value.copyWith(
      dreamWorld: freezed == dreamWorld
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as DreamWorldSpriteModel?,
      officialArtwork: freezed == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtworkSpriteModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DreamWorldSpriteModelCopyWith<$Res>? get dreamWorld {
    if (_value.dreamWorld == null) {
      return null;
    }

    return $DreamWorldSpriteModelCopyWith<$Res>(_value.dreamWorld!, (value) {
      return _then(_value.copyWith(dreamWorld: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OfficialArtworkSpriteModelCopyWith<$Res>? get officialArtwork {
    if (_value.officialArtwork == null) {
      return null;
    }

    return $OfficialArtworkSpriteModelCopyWith<$Res>(_value.officialArtwork!,
        (value) {
      return _then(_value.copyWith(officialArtwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonOtherSpritesModelImplCopyWith<$Res>
    implements $PokemonOtherSpritesModelCopyWith<$Res> {
  factory _$$PokemonOtherSpritesModelImplCopyWith(
          _$PokemonOtherSpritesModelImpl value,
          $Res Function(_$PokemonOtherSpritesModelImpl) then) =
      __$$PokemonOtherSpritesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dream_world') DreamWorldSpriteModel? dreamWorld,
      @JsonKey(name: 'official-artwork')
      OfficialArtworkSpriteModel? officialArtwork});

  @override
  $DreamWorldSpriteModelCopyWith<$Res>? get dreamWorld;
  @override
  $OfficialArtworkSpriteModelCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class __$$PokemonOtherSpritesModelImplCopyWithImpl<$Res>
    extends _$PokemonOtherSpritesModelCopyWithImpl<$Res,
        _$PokemonOtherSpritesModelImpl>
    implements _$$PokemonOtherSpritesModelImplCopyWith<$Res> {
  __$$PokemonOtherSpritesModelImplCopyWithImpl(
      _$PokemonOtherSpritesModelImpl _value,
      $Res Function(_$PokemonOtherSpritesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamWorld = freezed,
    Object? officialArtwork = freezed,
  }) {
    return _then(_$PokemonOtherSpritesModelImpl(
      dreamWorld: freezed == dreamWorld
          ? _value.dreamWorld
          : dreamWorld // ignore: cast_nullable_to_non_nullable
              as DreamWorldSpriteModel?,
      officialArtwork: freezed == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtworkSpriteModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonOtherSpritesModelImpl implements _PokemonOtherSpritesModel {
  const _$PokemonOtherSpritesModelImpl(
      {@JsonKey(name: 'dream_world') this.dreamWorld,
      @JsonKey(name: 'official-artwork') this.officialArtwork});

  factory _$PokemonOtherSpritesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonOtherSpritesModelImplFromJson(json);

  @override
  @JsonKey(name: 'dream_world')
  final DreamWorldSpriteModel? dreamWorld;
  @override
  @JsonKey(name: 'official-artwork')
  final OfficialArtworkSpriteModel? officialArtwork;

  @override
  String toString() {
    return 'PokemonOtherSpritesModel(dreamWorld: $dreamWorld, officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonOtherSpritesModelImpl &&
            (identical(other.dreamWorld, dreamWorld) ||
                other.dreamWorld == dreamWorld) &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dreamWorld, officialArtwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonOtherSpritesModelImplCopyWith<_$PokemonOtherSpritesModelImpl>
      get copyWith => __$$PokemonOtherSpritesModelImplCopyWithImpl<
          _$PokemonOtherSpritesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonOtherSpritesModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonOtherSpritesModel implements PokemonOtherSpritesModel {
  const factory _PokemonOtherSpritesModel(
      {@JsonKey(name: 'dream_world') final DreamWorldSpriteModel? dreamWorld,
      @JsonKey(name: 'official-artwork')
      final OfficialArtworkSpriteModel?
          officialArtwork}) = _$PokemonOtherSpritesModelImpl;

  factory _PokemonOtherSpritesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonOtherSpritesModelImpl.fromJson;

  @override
  @JsonKey(name: 'dream_world')
  DreamWorldSpriteModel? get dreamWorld;
  @override
  @JsonKey(name: 'official-artwork')
  OfficialArtworkSpriteModel? get officialArtwork;
  @override
  @JsonKey(ignore: true)
  _$$PokemonOtherSpritesModelImplCopyWith<_$PokemonOtherSpritesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DreamWorldSpriteModel _$DreamWorldSpriteModelFromJson(
    Map<String, dynamic> json) {
  return _DreamWorldSpriteModel.fromJson(json);
}

/// @nodoc
mixin _$DreamWorldSpriteModel {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DreamWorldSpriteModelCopyWith<DreamWorldSpriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamWorldSpriteModelCopyWith<$Res> {
  factory $DreamWorldSpriteModelCopyWith(DreamWorldSpriteModel value,
          $Res Function(DreamWorldSpriteModel) then) =
      _$DreamWorldSpriteModelCopyWithImpl<$Res, DreamWorldSpriteModel>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class _$DreamWorldSpriteModelCopyWithImpl<$Res,
        $Val extends DreamWorldSpriteModel>
    implements $DreamWorldSpriteModelCopyWith<$Res> {
  _$DreamWorldSpriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DreamWorldSpriteModelImplCopyWith<$Res>
    implements $DreamWorldSpriteModelCopyWith<$Res> {
  factory _$$DreamWorldSpriteModelImplCopyWith(
          _$DreamWorldSpriteModelImpl value,
          $Res Function(_$DreamWorldSpriteModelImpl) then) =
      __$$DreamWorldSpriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class __$$DreamWorldSpriteModelImplCopyWithImpl<$Res>
    extends _$DreamWorldSpriteModelCopyWithImpl<$Res,
        _$DreamWorldSpriteModelImpl>
    implements _$$DreamWorldSpriteModelImplCopyWith<$Res> {
  __$$DreamWorldSpriteModelImplCopyWithImpl(_$DreamWorldSpriteModelImpl _value,
      $Res Function(_$DreamWorldSpriteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_$DreamWorldSpriteModelImpl(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DreamWorldSpriteModelImpl implements _DreamWorldSpriteModel {
  const _$DreamWorldSpriteModelImpl(
      {@JsonKey(name: 'front_default') this.frontDefault});

  factory _$DreamWorldSpriteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DreamWorldSpriteModelImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;

  @override
  String toString() {
    return 'DreamWorldSpriteModel(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DreamWorldSpriteModelImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DreamWorldSpriteModelImplCopyWith<_$DreamWorldSpriteModelImpl>
      get copyWith => __$$DreamWorldSpriteModelImplCopyWithImpl<
          _$DreamWorldSpriteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DreamWorldSpriteModelImplToJson(
      this,
    );
  }
}

abstract class _DreamWorldSpriteModel implements DreamWorldSpriteModel {
  const factory _DreamWorldSpriteModel(
          {@JsonKey(name: 'front_default') final String? frontDefault}) =
      _$DreamWorldSpriteModelImpl;

  factory _DreamWorldSpriteModel.fromJson(Map<String, dynamic> json) =
      _$DreamWorldSpriteModelImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$DreamWorldSpriteModelImplCopyWith<_$DreamWorldSpriteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OfficialArtworkSpriteModel _$OfficialArtworkSpriteModelFromJson(
    Map<String, dynamic> json) {
  return _OfficialArtworkSpriteModel.fromJson(json);
}

/// @nodoc
mixin _$OfficialArtworkSpriteModel {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficialArtworkSpriteModelCopyWith<OfficialArtworkSpriteModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialArtworkSpriteModelCopyWith<$Res> {
  factory $OfficialArtworkSpriteModelCopyWith(OfficialArtworkSpriteModel value,
          $Res Function(OfficialArtworkSpriteModel) then) =
      _$OfficialArtworkSpriteModelCopyWithImpl<$Res,
          OfficialArtworkSpriteModel>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class _$OfficialArtworkSpriteModelCopyWithImpl<$Res,
        $Val extends OfficialArtworkSpriteModel>
    implements $OfficialArtworkSpriteModelCopyWith<$Res> {
  _$OfficialArtworkSpriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfficialArtworkSpriteModelImplCopyWith<$Res>
    implements $OfficialArtworkSpriteModelCopyWith<$Res> {
  factory _$$OfficialArtworkSpriteModelImplCopyWith(
          _$OfficialArtworkSpriteModelImpl value,
          $Res Function(_$OfficialArtworkSpriteModelImpl) then) =
      __$$OfficialArtworkSpriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class __$$OfficialArtworkSpriteModelImplCopyWithImpl<$Res>
    extends _$OfficialArtworkSpriteModelCopyWithImpl<$Res,
        _$OfficialArtworkSpriteModelImpl>
    implements _$$OfficialArtworkSpriteModelImplCopyWith<$Res> {
  __$$OfficialArtworkSpriteModelImplCopyWithImpl(
      _$OfficialArtworkSpriteModelImpl _value,
      $Res Function(_$OfficialArtworkSpriteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_$OfficialArtworkSpriteModelImpl(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfficialArtworkSpriteModelImpl implements _OfficialArtworkSpriteModel {
  const _$OfficialArtworkSpriteModelImpl(
      {@JsonKey(name: 'front_default') this.frontDefault});

  factory _$OfficialArtworkSpriteModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OfficialArtworkSpriteModelImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;

  @override
  String toString() {
    return 'OfficialArtworkSpriteModel(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficialArtworkSpriteModelImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficialArtworkSpriteModelImplCopyWith<_$OfficialArtworkSpriteModelImpl>
      get copyWith => __$$OfficialArtworkSpriteModelImplCopyWithImpl<
          _$OfficialArtworkSpriteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfficialArtworkSpriteModelImplToJson(
      this,
    );
  }
}

abstract class _OfficialArtworkSpriteModel
    implements OfficialArtworkSpriteModel {
  const factory _OfficialArtworkSpriteModel(
          {@JsonKey(name: 'front_default') final String? frontDefault}) =
      _$OfficialArtworkSpriteModelImpl;

  factory _OfficialArtworkSpriteModel.fromJson(Map<String, dynamic> json) =
      _$OfficialArtworkSpriteModelImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$OfficialArtworkSpriteModelImplCopyWith<_$OfficialArtworkSpriteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokemonListItemModel _$PokemonListItemModelFromJson(Map<String, dynamic> json) {
  return _PokemonListItemModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonListItemModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListItemModelCopyWith<PokemonListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListItemModelCopyWith<$Res> {
  factory $PokemonListItemModelCopyWith(PokemonListItemModel value,
          $Res Function(PokemonListItemModel) then) =
      _$PokemonListItemModelCopyWithImpl<$Res, PokemonListItemModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonListItemModelCopyWithImpl<$Res,
        $Val extends PokemonListItemModel>
    implements $PokemonListItemModelCopyWith<$Res> {
  _$PokemonListItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListItemModelImplCopyWith<$Res>
    implements $PokemonListItemModelCopyWith<$Res> {
  factory _$$PokemonListItemModelImplCopyWith(_$PokemonListItemModelImpl value,
          $Res Function(_$PokemonListItemModelImpl) then) =
      __$$PokemonListItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonListItemModelImplCopyWithImpl<$Res>
    extends _$PokemonListItemModelCopyWithImpl<$Res, _$PokemonListItemModelImpl>
    implements _$$PokemonListItemModelImplCopyWith<$Res> {
  __$$PokemonListItemModelImplCopyWithImpl(_$PokemonListItemModelImpl _value,
      $Res Function(_$PokemonListItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonListItemModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListItemModelImpl extends _PokemonListItemModel {
  const _$PokemonListItemModelImpl({required this.name, required this.url})
      : super._();

  factory _$PokemonListItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListItemModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonListItemModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListItemModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListItemModelImplCopyWith<_$PokemonListItemModelImpl>
      get copyWith =>
          __$$PokemonListItemModelImplCopyWithImpl<_$PokemonListItemModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListItemModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonListItemModel extends PokemonListItemModel {
  const factory _PokemonListItemModel(
      {required final String name,
      required final String url}) = _$PokemonListItemModelImpl;
  const _PokemonListItemModel._() : super._();

  factory _PokemonListItemModel.fromJson(Map<String, dynamic> json) =
      _$PokemonListItemModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListItemModelImplCopyWith<_$PokemonListItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
