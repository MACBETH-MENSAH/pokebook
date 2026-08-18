// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedPokemon {
  IList<PokemonSummary> get items => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedPokemonCopyWith<PaginatedPokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedPokemonCopyWith<$Res> {
  factory $PaginatedPokemonCopyWith(
          PaginatedPokemon value, $Res Function(PaginatedPokemon) then) =
      _$PaginatedPokemonCopyWithImpl<$Res, PaginatedPokemon>;
  @useResult
  $Res call(
      {IList<PokemonSummary> items,
      int currentPage,
      int pageSize,
      int totalCount});
}

/// @nodoc
class _$PaginatedPokemonCopyWithImpl<$Res, $Val extends PaginatedPokemon>
    implements $PaginatedPokemonCopyWith<$Res> {
  _$PaginatedPokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<PokemonSummary>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedPokemonImplCopyWith<$Res>
    implements $PaginatedPokemonCopyWith<$Res> {
  factory _$$PaginatedPokemonImplCopyWith(_$PaginatedPokemonImpl value,
          $Res Function(_$PaginatedPokemonImpl) then) =
      __$$PaginatedPokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IList<PokemonSummary> items,
      int currentPage,
      int pageSize,
      int totalCount});
}

/// @nodoc
class __$$PaginatedPokemonImplCopyWithImpl<$Res>
    extends _$PaginatedPokemonCopyWithImpl<$Res, _$PaginatedPokemonImpl>
    implements _$$PaginatedPokemonImplCopyWith<$Res> {
  __$$PaginatedPokemonImplCopyWithImpl(_$PaginatedPokemonImpl _value,
      $Res Function(_$PaginatedPokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalCount = null,
  }) {
    return _then(_$PaginatedPokemonImpl(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<PokemonSummary>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaginatedPokemonImpl extends _PaginatedPokemon {
  const _$PaginatedPokemonImpl(
      {required this.items,
      required this.currentPage,
      required this.pageSize,
      required this.totalCount})
      : super._();

  @override
  final IList<PokemonSummary> items;
  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'PaginatedPokemon(items: $items, currentPage: $currentPage, pageSize: $pageSize, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedPokemonImpl &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      currentPage,
      pageSize,
      totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedPokemonImplCopyWith<_$PaginatedPokemonImpl> get copyWith =>
      __$$PaginatedPokemonImplCopyWithImpl<_$PaginatedPokemonImpl>(
          this, _$identity);
}

abstract class _PaginatedPokemon extends PaginatedPokemon {
  const factory _PaginatedPokemon(
      {required final IList<PokemonSummary> items,
      required final int currentPage,
      required final int pageSize,
      required final int totalCount}) = _$PaginatedPokemonImpl;
  const _PaginatedPokemon._() : super._();

  @override
  IList<PokemonSummary> get items;
  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedPokemonImplCopyWith<_$PaginatedPokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
