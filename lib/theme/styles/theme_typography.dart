import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

/// Standardized typography for consistent text styling
class ThemeTypography {
  ThemeTypography._(); // Private constructor

  // Base text style creation
  static TextStyle _createTextStyle({required double fontSize, required FontWeight fontWeight, Color? color, double? height, double? letterSpacing, TextDecoration? decoration, bool isDark = false}) {
    return GoogleFonts.exo(fontSize: fontSize, fontWeight: fontWeight, color: color ?? (isDark ? Colors.white : Colors.black), height: height, letterSpacing: letterSpacing, decoration: decoration);
  }

  // Resolve text style based on theme brightness
  static TextStyle resolveStyle(BuildContext context, TextStyle lightStyle, TextStyle darkStyle) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? lightStyle : darkStyle;
  }
}

/// Light theme typography
class LightThemeTypography {
  LightThemeTypography._(); // Private constructor

  // Headings
  static final TextStyle displayLarge = ThemeTypography._createTextStyle(fontSize: 57, fontWeight: FontWeight.w500, letterSpacing: -0.25, color: LightThemeColors.textPrimary);

  static final TextStyle displayMedium = ThemeTypography._createTextStyle(fontSize: 45, fontWeight: FontWeight.w500, color: LightThemeColors.textPrimary);

  static final TextStyle displaySmall = ThemeTypography._createTextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: LightThemeColors.textPrimary);

  static final TextStyle headlineLarge = ThemeTypography._createTextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: LightThemeColors.textPrimary);

  static final TextStyle headlineMedium = ThemeTypography._createTextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: LightThemeColors.textPrimary);

  static final TextStyle headlineSmall = ThemeTypography._createTextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: LightThemeColors.textPrimary);

  // Titles
  static final TextStyle titleLarge = ThemeTypography._createTextStyle(fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: 0.25, color: LightThemeColors.textPrimary);

  static final TextStyle titleMedium = ThemeTypography._createTextStyle(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.25, color: LightThemeColors.textPrimary);

  static final TextStyle titleSmall = ThemeTypography._createTextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: LightThemeColors.textPrimary);

  // Body
  static final TextStyle bodyLarge = ThemeTypography._createTextStyle(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5, color: LightThemeColors.textPrimary);

  static final TextStyle bodyMedium = ThemeTypography._createTextStyle(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25, color: LightThemeColors.textPrimary);

  static final TextStyle bodySmall = ThemeTypography._createTextStyle(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4, color: LightThemeColors.textSecondary);

  // Labels
  static final TextStyle labelLarge = ThemeTypography._createTextStyle(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.1, color: LightThemeColors.textPrimary);

  static final TextStyle labelMedium = ThemeTypography._createTextStyle(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.5, color: LightThemeColors.textPrimary);

  static final TextStyle labelSmall = ThemeTypography._createTextStyle(fontSize: 11, fontWeight: FontWeight.w500, letterSpacing: 0.5, color: LightThemeColors.textSecondary);

  // Special text styles
  static final TextStyle button = ThemeTypography._createTextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white);

  static final TextStyle caption = ThemeTypography._createTextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: LightThemeColors.textSecondary);

  static final TextStyle hint = ThemeTypography._createTextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: LightThemeColors.textHint);

  static final TextStyle error = ThemeTypography._createTextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: LightThemeColors.error, height: 0.4);
}

/// Dark theme typography
class DarkThemeTypography {
  DarkThemeTypography._(); // Private constructor

  // Headings
  static final TextStyle displayLarge = ThemeTypography._createTextStyle(fontSize: 57, fontWeight: FontWeight.w500, letterSpacing: -0.25, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle displayMedium = ThemeTypography._createTextStyle(fontSize: 45, fontWeight: FontWeight.w500, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle displaySmall = ThemeTypography._createTextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle headlineLarge = ThemeTypography._createTextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle headlineMedium = ThemeTypography._createTextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle headlineSmall = ThemeTypography._createTextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: DarkThemeColors.textPrimary, isDark: true);

  // Titles
  static final TextStyle titleLarge = ThemeTypography._createTextStyle(fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: 0.25, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle titleMedium = ThemeTypography._createTextStyle(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.25, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle titleSmall = ThemeTypography._createTextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: DarkThemeColors.textPrimary, isDark: true);

  // Body
  static final TextStyle bodyLarge = ThemeTypography._createTextStyle(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle bodyMedium = ThemeTypography._createTextStyle(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle bodySmall = ThemeTypography._createTextStyle(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4, color: DarkThemeColors.textSecondary, isDark: true);

  // Labels
  static final TextStyle labelLarge = ThemeTypography._createTextStyle(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.1, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle labelMedium = ThemeTypography._createTextStyle(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.5, color: DarkThemeColors.textPrimary, isDark: true);

  static final TextStyle labelSmall = ThemeTypography._createTextStyle(fontSize: 11, fontWeight: FontWeight.w500, letterSpacing: 0.5, color: DarkThemeColors.textSecondary, isDark: true);

  // Special text styles
  static final TextStyle button = ThemeTypography._createTextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white, isDark: true);

  static final TextStyle caption = ThemeTypography._createTextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: DarkThemeColors.textSecondary, isDark: true);

  static final TextStyle hint = ThemeTypography._createTextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: DarkThemeColors.textHint, isDark: true);

  static final TextStyle error = ThemeTypography._createTextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: DarkThemeColors.error, height: 0.4, isDark: true);
}
