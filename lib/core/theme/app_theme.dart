import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Selectable primary colors shown in the Theme Picker modal.
/// Adjust these once we have exact hex values from Figma.
class AppThemeColors {
  static const List<Color> selectable = [
    Color(0xFFEF4444), // red
    Color(0xFFF97316), // orange
    Color(0xFFEAB308), // yellow
    Color(0xFF22C55E), // green
    Color(0xFF3B82F6), // blue (default)
    Color(0xFF8B5CF6), // purple
    Color(0xFFEC4899), // pink
  ];

  static const Color defaultPrimary = Color(0xFF3B82F6);
}

class AppTheme {
  static ThemeData light(Color primary) {
    final scheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      textTheme: GoogleFonts.interTextTheme(),
      scaffoldBackgroundColor: scheme.surface,
    );
  }

  static ThemeData dark(Color primary) {
    final scheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.dark,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      textTheme: GoogleFonts.interTextTheme(ThemeData(brightness: Brightness.dark).textTheme),
      scaffoldBackgroundColor: scheme.surface,
    );
  }
}
