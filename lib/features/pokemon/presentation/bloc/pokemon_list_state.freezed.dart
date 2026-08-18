// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonListState {
  PokemonListStatus get status => throw _privateConstructorUsedError;
  IList<PokemonSummary> get items => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonListStateCopyWith<PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListStateCopyWith<$Res> {
  factory $PokemonListStateCopyWith(
          PokemonListState value, $Res Function(PokemonListState) then) =
      _$PokemonListStateCopyWithImpl<$Res, PokemonListState>;
  @useResult
  $Res call(
      {PokemonListStatus status,
      IList<PokemonSummary> items,
      int currentPage,
      int pageSize,
      int totalPages,
      String searchQuery,
      String? errorMessage});
}

/// @nodoc
class _$PokemonListStateCopyWithImpl<$Res, $Val extends PokemonListState>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? searchQuery = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonListStatus,
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
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListStateImplCopyWith<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  factory _$$PokemonListStateImplCopyWith(_$PokemonListStateImpl value,
          $Res Function(_$PokemonListStateImpl) then) =
      __$$PokemonListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokemonListStatus status,
      IList<PokemonSummary> items,
      int currentPage,
      int pageSize,
      int totalPages,
      String searchQuery,
      String? errorMessage});
}

/// @nodoc
class __$$PokemonListStateImplCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res, _$PokemonListStateImpl>
    implements _$$PokemonListStateImplCopyWith<$Res> {
  __$$PokemonListStateImplCopyWithImpl(_$PokemonListStateImpl _value,
      $Res Function(_$PokemonListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? searchQuery = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PokemonListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonListStatus,
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
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PokemonListStateImpl implements _PokemonListState {
  const _$PokemonListStateImpl(
      {this.status = PokemonListStatus.initial,
      this.items = const IListConst([]),
      this.currentPage = 1,
      this.pageSize = 4,
      this.totalPages = 1,
      this.searchQuery = '',
      this.errorMessage});

  @override
  @JsonKey()
  final PokemonListStatus status;
  @override
  @JsonKey()
  final IList<PokemonSummary> items;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PokemonListState(status: $status, items: $items, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages, searchQuery: $searchQuery, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(items),
      currentPage,
      pageSize,
      totalPages,
      searchQuery,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListStateImplCopyWith<_$PokemonListStateImpl> get copyWith =>
      __$$PokemonListStateImplCopyWithImpl<_$PokemonListStateImpl>(
          this, _$identity);
}

abstract class _PokemonListState implements PokemonListState {
  const factory _PokemonListState(
      {final PokemonListStatus status,
      final IList<PokemonSummary> items,
      final int currentPage,
      final int pageSize,
      final int totalPages,
      final String searchQuery,
      final String? errorMessage}) = _$PokemonListStateImpl;

  @override
  PokemonListStatus get status;
  @override
  IList<PokemonSummary> get items;
  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  int get totalPages;
  @override
  String get searchQuery;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListStateImplCopyWith<_$PokemonListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
