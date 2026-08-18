// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppThemeState {
  Color get primaryColor => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeStateCopyWith<AppThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeStateCopyWith<$Res> {
  factory $AppThemeStateCopyWith(
          AppThemeState value, $Res Function(AppThemeState) then) =
      _$AppThemeStateCopyWithImpl<$Res, AppThemeState>;
  @useResult
  $Res call({Color primaryColor, ThemeMode themeMode});
}

/// @nodoc
class _$AppThemeStateCopyWithImpl<$Res, $Val extends AppThemeState>
    implements $AppThemeStateCopyWith<$Res> {
  _$AppThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryColor = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      primaryColor: null == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as Color,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppThemeStateImplCopyWith<$Res>
    implements $AppThemeStateCopyWith<$Res> {
  factory _$$AppThemeStateImplCopyWith(
          _$AppThemeStateImpl value, $Res Function(_$AppThemeStateImpl) then) =
      __$$AppThemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color primaryColor, ThemeMode themeMode});
}

/// @nodoc
class __$$AppThemeStateImplCopyWithImpl<$Res>
    extends _$AppThemeStateCopyWithImpl<$Res, _$AppThemeStateImpl>
    implements _$$AppThemeStateImplCopyWith<$Res> {
  __$$AppThemeStateImplCopyWithImpl(
      _$AppThemeStateImpl _value, $Res Function(_$AppThemeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryColor = null,
    Object? themeMode = null,
  }) {
    return _then(_$AppThemeStateImpl(
      primaryColor: null == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as Color,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$AppThemeStateImpl implements _AppThemeState {
  const _$AppThemeStateImpl(
      {required this.primaryColor, required this.themeMode});

  @override
  final Color primaryColor;
  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'AppThemeState(primaryColor: $primaryColor, themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeStateImpl &&
            (identical(other.primaryColor, primaryColor) ||
                other.primaryColor == primaryColor) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, primaryColor, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeStateImplCopyWith<_$AppThemeStateImpl> get copyWith =>
      __$$AppThemeStateImplCopyWithImpl<_$AppThemeStateImpl>(this, _$identity);
}

abstract class _AppThemeState implements AppThemeState {
  const factory _AppThemeState(
      {required final Color primaryColor,
      required final ThemeMode themeMode}) = _$AppThemeStateImpl;

  @override
  Color get primaryColor;
  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$AppThemeStateImplCopyWith<_$AppThemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
