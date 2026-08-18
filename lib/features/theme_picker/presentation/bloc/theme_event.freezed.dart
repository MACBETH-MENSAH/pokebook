// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color color) primaryColorChanged,
    required TResult Function() themeModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color color)? primaryColorChanged,
    TResult? Function()? themeModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color color)? primaryColorChanged,
    TResult Function()? themeModeToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimaryColorChanged value) primaryColorChanged,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimaryColorChanged value)? primaryColorChanged,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimaryColorChanged value)? primaryColorChanged,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PrimaryColorChangedImplCopyWith<$Res> {
  factory _$$PrimaryColorChangedImplCopyWith(_$PrimaryColorChangedImpl value,
          $Res Function(_$PrimaryColorChangedImpl) then) =
      __$$PrimaryColorChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$PrimaryColorChangedImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$PrimaryColorChangedImpl>
    implements _$$PrimaryColorChangedImplCopyWith<$Res> {
  __$$PrimaryColorChangedImplCopyWithImpl(_$PrimaryColorChangedImpl _value,
      $Res Function(_$PrimaryColorChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$PrimaryColorChangedImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$PrimaryColorChangedImpl implements _PrimaryColorChanged {
  const _$PrimaryColorChangedImpl(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'ThemeEvent.primaryColorChanged(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryColorChangedImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimaryColorChangedImplCopyWith<_$PrimaryColorChangedImpl> get copyWith =>
      __$$PrimaryColorChangedImplCopyWithImpl<_$PrimaryColorChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color color) primaryColorChanged,
    required TResult Function() themeModeToggled,
  }) {
    return primaryColorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color color)? primaryColorChanged,
    TResult? Function()? themeModeToggled,
  }) {
    return primaryColorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color color)? primaryColorChanged,
    TResult Function()? themeModeToggled,
    required TResult orElse(),
  }) {
    if (primaryColorChanged != null) {
      return primaryColorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimaryColorChanged value) primaryColorChanged,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
  }) {
    return primaryColorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimaryColorChanged value)? primaryColorChanged,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
  }) {
    return primaryColorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimaryColorChanged value)? primaryColorChanged,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    required TResult orElse(),
  }) {
    if (primaryColorChanged != null) {
      return primaryColorChanged(this);
    }
    return orElse();
  }
}

abstract class _PrimaryColorChanged implements ThemeEvent {
  const factory _PrimaryColorChanged(final Color color) =
      _$PrimaryColorChangedImpl;

  Color get color;
  @JsonKey(ignore: true)
  _$$PrimaryColorChangedImplCopyWith<_$PrimaryColorChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeModeToggledImplCopyWith<$Res> {
  factory _$$ThemeModeToggledImplCopyWith(_$ThemeModeToggledImpl value,
          $Res Function(_$ThemeModeToggledImpl) then) =
      __$$ThemeModeToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeModeToggledImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeModeToggledImpl>
    implements _$$ThemeModeToggledImplCopyWith<$Res> {
  __$$ThemeModeToggledImplCopyWithImpl(_$ThemeModeToggledImpl _value,
      $Res Function(_$ThemeModeToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeModeToggledImpl implements _ThemeModeToggled {
  const _$ThemeModeToggledImpl();

  @override
  String toString() {
    return 'ThemeEvent.themeModeToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeModeToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color color) primaryColorChanged,
    required TResult Function() themeModeToggled,
  }) {
    return themeModeToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color color)? primaryColorChanged,
    TResult? Function()? themeModeToggled,
  }) {
    return themeModeToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color color)? primaryColorChanged,
    TResult Function()? themeModeToggled,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimaryColorChanged value) primaryColorChanged,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
  }) {
    return themeModeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimaryColorChanged value)? primaryColorChanged,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
  }) {
    return themeModeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimaryColorChanged value)? primaryColorChanged,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled(this);
    }
    return orElse();
  }
}

abstract class _ThemeModeToggled implements ThemeEvent {
  const factory _ThemeModeToggled() = _$ThemeModeToggledImpl;
}
