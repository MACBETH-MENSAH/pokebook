// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) pageRequested,
    required TResult Function(String query) searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? pageRequested,
    TResult? Function(String query)? searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? pageRequested,
    TResult Function(String query)? searchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListEventCopyWith<$Res> {
  factory $PokemonListEventCopyWith(
          PokemonListEvent value, $Res Function(PokemonListEvent) then) =
      _$PokemonListEventCopyWithImpl<$Res, PokemonListEvent>;
}

/// @nodoc
class _$PokemonListEventCopyWithImpl<$Res, $Val extends PokemonListEvent>
    implements $PokemonListEventCopyWith<$Res> {
  _$PokemonListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PokemonListEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PokemonListEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) pageRequested,
    required TResult Function(String query) searchQueryChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? pageRequested,
    TResult? Function(String query)? searchQueryChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? pageRequested,
    TResult Function(String query)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PokemonListEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PageRequestedImplCopyWith<$Res> {
  factory _$$PageRequestedImplCopyWith(
          _$PageRequestedImpl value, $Res Function(_$PageRequestedImpl) then) =
      __$$PageRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$PageRequestedImplCopyWithImpl<$Res>
    extends _$PokemonListEventCopyWithImpl<$Res, _$PageRequestedImpl>
    implements _$$PageRequestedImplCopyWith<$Res> {
  __$$PageRequestedImplCopyWithImpl(
      _$PageRequestedImpl _value, $Res Function(_$PageRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$PageRequestedImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageRequestedImpl implements _PageRequested {
  const _$PageRequestedImpl(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'PokemonListEvent.pageRequested(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageRequestedImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageRequestedImplCopyWith<_$PageRequestedImpl> get copyWith =>
      __$$PageRequestedImplCopyWithImpl<_$PageRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) pageRequested,
    required TResult Function(String query) searchQueryChanged,
  }) {
    return pageRequested(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? pageRequested,
    TResult? Function(String query)? searchQueryChanged,
  }) {
    return pageRequested?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? pageRequested,
    TResult Function(String query)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) {
    return pageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) {
    return pageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(this);
    }
    return orElse();
  }
}

abstract class _PageRequested implements PokemonListEvent {
  const factory _PageRequested(final int page) = _$PageRequestedImpl;

  int get page;
  @JsonKey(ignore: true)
  _$$PageRequestedImplCopyWith<_$PageRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchQueryChangedImplCopyWith<$Res> {
  factory _$$SearchQueryChangedImplCopyWith(_$SearchQueryChangedImpl value,
          $Res Function(_$SearchQueryChangedImpl) then) =
      __$$SearchQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchQueryChangedImplCopyWithImpl<$Res>
    extends _$PokemonListEventCopyWithImpl<$Res, _$SearchQueryChangedImpl>
    implements _$$SearchQueryChangedImplCopyWith<$Res> {
  __$$SearchQueryChangedImplCopyWithImpl(_$SearchQueryChangedImpl _value,
      $Res Function(_$SearchQueryChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchQueryChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQueryChangedImpl implements _SearchQueryChanged {
  const _$SearchQueryChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'PokemonListEvent.searchQueryChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      __$$SearchQueryChangedImplCopyWithImpl<_$SearchQueryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) pageRequested,
    required TResult Function(String query) searchQueryChanged,
  }) {
    return searchQueryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? pageRequested,
    TResult? Function(String query)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? pageRequested,
    TResult Function(String query)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) {
    return searchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchQueryChanged implements PokemonListEvent {
  const factory _SearchQueryChanged(final String query) =
      _$SearchQueryChangedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
