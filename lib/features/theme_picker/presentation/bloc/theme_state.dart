import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class AppThemeState with _$AppThemeState {
  const factory AppThemeState({
    required Color primaryColor,
    required ThemeMode themeMode,
  }) = _AppThemeState;
}
