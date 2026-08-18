// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) requested,
    required TResult Function(DetailTab tab) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? requested,
    TResult? Function(DetailTab tab)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? requested,
    TResult Function(DetailTab tab)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailRequested value) requested,
    required TResult Function(_DetailTabChanged value) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailRequested value)? requested,
    TResult? Function(_DetailTabChanged value)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailRequested value)? requested,
    TResult Function(_DetailTabChanged value)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailEventCopyWith<$Res> {
  factory $PokemonDetailEventCopyWith(
          PokemonDetailEvent value, $Res Function(PokemonDetailEvent) then) =
      _$PokemonDetailEventCopyWithImpl<$Res, PokemonDetailEvent>;
}

/// @nodoc
class _$PokemonDetailEventCopyWithImpl<$Res, $Val extends PokemonDetailEvent>
    implements $PokemonDetailEventCopyWith<$Res> {
  _$PokemonDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DetailRequestedImplCopyWith<$Res> {
  factory _$$DetailRequestedImplCopyWith(_$DetailRequestedImpl value,
          $Res Function(_$DetailRequestedImpl) then) =
      __$$DetailRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DetailRequestedImplCopyWithImpl<$Res>
    extends _$PokemonDetailEventCopyWithImpl<$Res, _$DetailRequestedImpl>
    implements _$$DetailRequestedImplCopyWith<$Res> {
  __$$DetailRequestedImplCopyWithImpl(
      _$DetailRequestedImpl _value, $Res Function(_$DetailRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DetailRequestedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DetailRequestedImpl implements _DetailRequested {
  const _$DetailRequestedImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PokemonDetailEvent.requested(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailRequestedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailRequestedImplCopyWith<_$DetailRequestedImpl> get copyWith =>
      __$$DetailRequestedImplCopyWithImpl<_$DetailRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) requested,
    required TResult Function(DetailTab tab) tabChanged,
  }) {
    return requested(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? requested,
    TResult? Function(DetailTab tab)? tabChanged,
  }) {
    return requested?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? requested,
    TResult Function(DetailTab tab)? tabChanged,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailRequested value) requested,
    required TResult Function(_DetailTabChanged value) tabChanged,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailRequested value)? requested,
    TResult? Function(_DetailTabChanged value)? tabChanged,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailRequested value)? requested,
    TResult Function(_DetailTabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class _DetailRequested implements PokemonDetailEvent {
  const factory _DetailRequested(final int id) = _$DetailRequestedImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DetailRequestedImplCopyWith<_$DetailRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailTabChangedImplCopyWith<$Res> {
  factory _$$DetailTabChangedImplCopyWith(_$DetailTabChangedImpl value,
          $Res Function(_$DetailTabChangedImpl) then) =
      __$$DetailTabChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailTab tab});
}

/// @nodoc
class __$$DetailTabChangedImplCopyWithImpl<$Res>
    extends _$PokemonDetailEventCopyWithImpl<$Res, _$DetailTabChangedImpl>
    implements _$$DetailTabChangedImplCopyWith<$Res> {
  __$$DetailTabChangedImplCopyWithImpl(_$DetailTabChangedImpl _value,
      $Res Function(_$DetailTabChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$DetailTabChangedImpl(
      null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as DetailTab,
    ));
  }
}

/// @nodoc

class _$DetailTabChangedImpl implements _DetailTabChanged {
  const _$DetailTabChangedImpl(this.tab);

  @override
  final DetailTab tab;

  @override
  String toString() {
    return 'PokemonDetailEvent.tabChanged(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTabChangedImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTabChangedImplCopyWith<_$DetailTabChangedImpl> get copyWith =>
      __$$DetailTabChangedImplCopyWithImpl<_$DetailTabChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) requested,
    required TResult Function(DetailTab tab) tabChanged,
  }) {
    return tabChanged(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? requested,
    TResult? Function(DetailTab tab)? tabChanged,
  }) {
    return tabChanged?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? requested,
    TResult Function(DetailTab tab)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailRequested value) requested,
    required TResult Function(_DetailTabChanged value) tabChanged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailRequested value)? requested,
    TResult? Function(_DetailTabChanged value)? tabChanged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailRequested value)? requested,
    TResult Function(_DetailTabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class _DetailTabChanged implements PokemonDetailEvent {
  const factory _DetailTabChanged(final DetailTab tab) = _$DetailTabChangedImpl;

  DetailTab get tab;
  @JsonKey(ignore: true)
  _$$DetailTabChangedImplCopyWith<_$DetailTabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonDetailState {
  DetailStatus get status => throw _privateConstructorUsedError;
  Pokemon? get pokemon => throw _privateConstructorUsedError;
  DetailTab get activeTab => throw _privateConstructorUsedError;
  IList<PokemonSummary> get similar => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonDetailStateCopyWith<PokemonDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailStateCopyWith<$Res> {
  factory $PokemonDetailStateCopyWith(
          PokemonDetailState value, $Res Function(PokemonDetailState) then) =
      _$PokemonDetailStateCopyWithImpl<$Res, PokemonDetailState>;
  @useResult
  $Res call(
      {DetailStatus status,
      Pokemon? pokemon,
      DetailTab activeTab,
      IList<PokemonSummary> similar,
      String? errorMessage});

  $PokemonCopyWith<$Res>? get pokemon;
}

/// @nodoc
class _$PokemonDetailStateCopyWithImpl<$Res, $Val extends PokemonDetailState>
    implements $PokemonDetailStateCopyWith<$Res> {
  _$PokemonDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemon = freezed,
    Object? activeTab = null,
    Object? similar = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      pokemon: freezed == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      activeTab: null == activeTab
          ? _value.activeTab
          : activeTab // ignore: cast_nullable_to_non_nullable
              as DetailTab,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as IList<PokemonSummary>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res>? get pokemon {
    if (_value.pokemon == null) {
      return null;
    }

    return $PokemonCopyWith<$Res>(_value.pokemon!, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailStateImplCopyWith<$Res>
    implements $PokemonDetailStateCopyWith<$Res> {
  factory _$$PokemonDetailStateImplCopyWith(_$PokemonDetailStateImpl value,
          $Res Function(_$PokemonDetailStateImpl) then) =
      __$$PokemonDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetailStatus status,
      Pokemon? pokemon,
      DetailTab activeTab,
      IList<PokemonSummary> similar,
      String? errorMessage});

  @override
  $PokemonCopyWith<$Res>? get pokemon;
}

/// @nodoc
class __$$PokemonDetailStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailStateCopyWithImpl<$Res, _$PokemonDetailStateImpl>
    implements _$$PokemonDetailStateImplCopyWith<$Res> {
  __$$PokemonDetailStateImplCopyWithImpl(_$PokemonDetailStateImpl _value,
      $Res Function(_$PokemonDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemon = freezed,
    Object? activeTab = null,
    Object? similar = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PokemonDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      pokemon: freezed == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      activeTab: null == activeTab
          ? _value.activeTab
          : activeTab // ignore: cast_nullable_to_non_nullable
              as DetailTab,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as IList<PokemonSummary>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PokemonDetailStateImpl implements _PokemonDetailState {
  const _$PokemonDetailStateImpl(
      {this.status = DetailStatus.loading,
      this.pokemon,
      this.activeTab = DetailTab.about,
      this.similar = const IListConst([]),
      this.errorMessage});

  @override
  @JsonKey()
  final DetailStatus status;
  @override
  final Pokemon? pokemon;
  @override
  @JsonKey()
  final DetailTab activeTab;
  @override
  @JsonKey()
  final IList<PokemonSummary> similar;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PokemonDetailState(status: $status, pokemon: $pokemon, activeTab: $activeTab, similar: $similar, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon) &&
            (identical(other.activeTab, activeTab) ||
                other.activeTab == activeTab) &&
            const DeepCollectionEquality().equals(other.similar, similar) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, pokemon, activeTab,
      const DeepCollectionEquality().hash(similar), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailStateImplCopyWith<_$PokemonDetailStateImpl> get copyWith =>
      __$$PokemonDetailStateImplCopyWithImpl<_$PokemonDetailStateImpl>(
          this, _$identity);
}

abstract class _PokemonDetailState implements PokemonDetailState {
  const factory _PokemonDetailState(
      {final DetailStatus status,
      final Pokemon? pokemon,
      final DetailTab activeTab,
      final IList<PokemonSummary> similar,
      final String? errorMessage}) = _$PokemonDetailStateImpl;

  @override
  DetailStatus get status;
  @override
  Pokemon? get pokemon;
  @override
  DetailTab get activeTab;
  @override
  IList<PokemonSummary> get similar;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailStateImplCopyWith<_$PokemonDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
