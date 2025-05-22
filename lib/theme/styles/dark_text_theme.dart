import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTextTheme {
  static const Color _defaultColor = Colors.white;

  /// ✅ Theme used in ThemeData
  static final TextTheme theme = TextTheme(
    displayLarge: _style(57, FontWeight.w500, letterSpacing: -0.25),
    displayMedium: _style(45, FontWeight.w500),
    displaySmall: _style(36, FontWeight.w500),
    headlineLarge: _style(32, FontWeight.w500),
    headlineMedium: _style(28, FontWeight.w500),
    headlineSmall: _style(24, FontWeight.w500),
    titleLarge: _style(22, FontWeight.w600, letterSpacing: 0.25),
    titleMedium: _style(16, FontWeight.w500, letterSpacing: 0.25),
    titleSmall: _style(14, FontWeight.w500),
    bodyLarge: _style(16, FontWeight.w400, letterSpacing: 0.5),
    bodyMedium: _style(14, FontWeight.w400, letterSpacing: 0.25),
    bodySmall: _style(12, FontWeight.w400, letterSpacing: 0.4),
    labelLarge: _style(14, FontWeight.w600, letterSpacing: 0.1),
    labelMedium: _style(12, FontWeight.w500, letterSpacing: 0.5),
    labelSmall: _style(11, FontWeight.w500, letterSpacing: 0.5),
  );

  /// ✅ Custom styles for widgets (e.g., button, hint, etc.)
  static TextStyle get elevatedButton => _style(16, FontWeight.w600);
  static TextStyle get textButtonStyle =>
      _style(14, FontWeight.w500, letterSpacing: 0.25);
  static TextStyle get hintStyle => _style(
    14,
    FontWeight.w400,
  ).copyWith(color: _defaultColor.withValues(alpha: 0.6));
  static TextStyle get errorStyle => _style(
    12,
    FontWeight.w400,
  ).copyWith(color: Colors.redAccent, height: 0.4);
  static TextStyle get titleTextStyle =>
      _style(16, FontWeight.w400, letterSpacing: 0.25);
  static TextStyle get subtitleTextStyle => _style(13, FontWeight.w400);

  /// Internal helper method
  static TextStyle _style(
    double size,
    FontWeight weight, {
    double? letterSpacing,
    Color color = _defaultColor,
  }) {
    return GoogleFonts.exo(
      fontSize: size,
      fontWeight: weight,
      letterSpacing: letterSpacing,
      color: color,
    );
  }
}
