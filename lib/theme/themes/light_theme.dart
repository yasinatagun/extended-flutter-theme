import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: LightThemeColors.primary,
      scaffoldBackgroundColor: LightThemeColors.scaffoldBackground,
      textTheme: LightTextTheme.theme,
      primaryTextTheme: LightTextTheme.theme,

      colorScheme: ColorScheme.light(
        primary: LightThemeColors.primary,
        secondary: LightThemeColors.primaryLight,
        surface: LightThemeColors.surface,
        error: LightThemeColors.error,
        onPrimary: LightThemeColors.onPrimary,
        onSecondary: Colors.white,
        onSurface: LightThemeColors.onSurface,
        onError: Colors.white,
        brightness: Brightness.light,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: LightThemeColors.primary,
        foregroundColor: LightThemeColors.onPrimary,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light),
      ),

      iconTheme: IconThemeData(color: LightThemeColors.primary),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.white, selectedItemColor: LightThemeColors.primary, unselectedItemColor: Colors.grey, elevation: 0),

      cardTheme: CardThemeData(
        elevation: ThemeDimensions.elevationS,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ThemeDimensions.radiusM)),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: LightThemeColors.primary,
          foregroundColor: LightThemeColors.onPrimary,
          elevation: ThemeDimensions.elevationS,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ThemeDimensions.radiusS)),
          padding: EdgeInsets.symmetric(horizontal: ThemeDimensions.spacingL, vertical: ThemeDimensions.spacingM),
          textStyle: LightTextTheme.elevatedButton,
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: LightThemeColors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ThemeDimensions.radiusS)),
          padding: EdgeInsets.symmetric(horizontal: ThemeDimensions.spacingL, vertical: ThemeDimensions.spacingM),
          textStyle: LightTextTheme.textButtonStyle,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: LightThemeColors.inputFill,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ThemeDimensions.radiusS),
          borderSide: BorderSide(color: LightThemeColors.inputBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ThemeDimensions.radiusS),
          borderSide: BorderSide(color: LightThemeColors.inputFocused, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ThemeDimensions.radiusS),
          borderSide: BorderSide(color: LightThemeColors.inputBorder),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: ThemeDimensions.spacingL, vertical: ThemeDimensions.spacingL),
        hintStyle: LightTextTheme.hintStyle,
        errorStyle: LightTextTheme.errorStyle,
      ),
    );
  }
}
