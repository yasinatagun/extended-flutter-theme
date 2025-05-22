import 'package:flutter/material.dart';

/// Theme-specific colors that change based on light/dark theme
class ThemeColors {
  ThemeColors._(); // Private constructor to prevent instantiation

  /// Current theme color accessors (to be used with Theme.of(context))
  static Color resolveColor(
    BuildContext context,
    Color lightColor,
    Color darkColor,
  ) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? lightColor : darkColor;
  }
}

/// Light theme colors
class LightThemeColors {
  LightThemeColors._(); // Private constructor

  // Primary colors
  static const primary = Color(0xFF6873BB);
  static const primaryDark = Color(0xFF4F5A96);
  static const primaryLight = Color(0xFF8A94CD);
  static const onPrimary = Colors.white;

  // Background colors
  static const background = Color(0xFFF6F8FE);
  static const surface = Colors.white;
  static const scaffoldBackground = Color(0xFFF6F8FE);
  static const onBackground = Color(0xFF333333);
  static const onSurface = Color(0xFF333333);

  // Card colors
  static const cardBackground = Colors.white;
  static const cardBorder = Color(0xFFEEEEEE);

  // Input colors
  static const inputFill = Color(0xFFF5F5F5);
  static const inputBorder = Color(0xFFDDDDDD);
  static const inputFocused = Color(0xFF6873BB);

  // Text colors
  static const textPrimary = Color(0xFF333333);
  static const textSecondary = Color(0xFF757575);
  static const textHint = Color(0xFF9E9E9E);

  // Status colors
  static const success = Color(0xFF81C784);
  static const warning = Color(0xFFFFF176);
  static const error = Color(0xFFE57373);
  static const info = Color(0xFF64B5F6);
}

/// Dark theme colors
class DarkThemeColors {
  DarkThemeColors._(); // Private constructor

  // Primary colors
  static const primary = Color(0xFF6873BB);
  static const primaryDark = Color(0xFF4F5A96);
  static const primaryLight = Color(0xFF8A94CD);
  static const onPrimary = Colors.white;

  // Background colors
  static const background = Color(0xFF121212);
  static const surface = Color(0xFF1E1E1E);
  static const scaffoldBackground = Color(0xFF121212);
  static const onBackground = Color(0xFFEEEEEE);
  static const onSurface = Color(0xFFEEEEEE);

  // Card colors
  static const cardBackground = Color(0xFF1E1E1E);
  static const cardBorder = Color(0xFF2C2C2C);

  // Input colors
  static const inputFill = Color(0xFF2A2A2A);
  static const inputBorder = Color(0xFF3A3A3A);
  static const inputFocused = Color(0xFF6873BB);

  // Text colors
  static const textPrimary = Color(0xFFEEEEEE);
  static const textSecondary = Color(0xFFB0B0B0);
  static const textHint = Color(0xFF757575);

  // Status colors
  static const success = Color(0xFF81C784);
  static const warning = Color(0xFFFFF176);
  static const error = Color(0xFFE57373);
  static const info = Color(0xFF64B5F6);
}
