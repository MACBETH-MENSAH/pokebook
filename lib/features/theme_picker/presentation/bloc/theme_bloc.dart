import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/theme/app_theme.dart';
import 'theme_event.dart';
import 'theme_state.dart';

/// Persisted via [HydratedBloc] so the user's chosen primary color and
/// light/dark preference survive app restarts, satisfying the
/// "app-wide theming ... persist across app launches" requirement.
@injectable
class ThemeBloc extends HydratedBloc<ThemeEvent, AppThemeState> {
  ThemeBloc()
      : super(const AppThemeState(
          primaryColor: AppThemeColors.defaultPrimary,
          themeMode: ThemeMode.light,
        )) {
    on<ThemeEvent>((event, emit) {
      event.when(
        primaryColorChanged: (color) => emit(state.copyWith(primaryColor: color)),
        themeModeToggled: () => emit(state.copyWith(
          themeMode: state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
        )),
      );
    });
  }

  @override
  AppThemeState? fromJson(Map<String, dynamic> json) {
    try {
      return AppThemeState(
        primaryColor: Color(json['primaryColor'] as int),
        themeMode: ThemeMode.values[json['themeMode'] as int],
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AppThemeState state) => {
        'primaryColor': state.primaryColor.value,
        'themeMode': state.themeMode.index,
      };
}
