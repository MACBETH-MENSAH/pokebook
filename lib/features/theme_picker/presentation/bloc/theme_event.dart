import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.freezed.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.primaryColorChanged(Color color) = _PrimaryColorChanged;
  const factory ThemeEvent.themeModeToggled() = _ThemeModeToggled;
}
