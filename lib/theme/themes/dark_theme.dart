import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme.dart';

/// Dark tema için tüm tasarım değerlerini içeren sınıf
class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true, // Material 3 daha modern ve iyi animasyonlar sağlar
      primaryColor: DarkThemeColors.primary,
      scaffoldBackgroundColor: DarkThemeColors.scaffoldBackground,
      textTheme: DarkTextTheme.theme,
      primaryTextTheme: DarkTextTheme.theme,

      // Daha hızlı geçişler için renk şeması tanımlayın
      colorScheme: ColorScheme.dark(
        primary: DarkThemeColors.primary,
        secondary: DarkThemeColors.primaryLight,
        surface: DarkThemeColors.surface,
        error: DarkThemeColors.error,
        onPrimary: DarkThemeColors.onPrimary,
        onSecondary: Colors.white,
        onSurface: DarkThemeColors.onSurface,
        onError: Colors.white,
        brightness: Brightness.dark,
      ),

      // AppBar teması
      appBarTheme: AppBarTheme(
        backgroundColor: DarkThemeColors.primary,
        foregroundColor: DarkThemeColors.onPrimary,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light),
      ),

      // Smooth transitions
      pageTransitionsTheme: const PageTransitionsTheme(builders: {TargetPlatform.android: ZoomPageTransitionsBuilder(), TargetPlatform.iOS: CupertinoPageTransitionsBuilder()}),

      // Card teması
      cardTheme: CardThemeData(
        color: DarkThemeColors.cardBackground,
        elevation: ThemeDimensions.elevationS,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ThemeDimensions.radiusM)),
      ),

      // Elevated buton teması
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: DarkThemeColors.primary,
          foregroundColor: DarkThemeColors.onPrimary,
          elevation: ThemeDimensions.elevationS,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ThemeDimensions.radiusS)),
          padding: EdgeInsets.symmetric(horizontal: ThemeDimensions.spacingL, vertical: ThemeDimensions.spacingM),
          textStyle: DarkTextTheme.elevatedButton,
        ),
      ),

      // Text buton teması
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: DarkThemeColors.primaryLight,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ThemeDimensions.radiusS)),
          padding: EdgeInsets.symmetric(horizontal: ThemeDimensions.spacingL, vertical: ThemeDimensions.spacingM),
          textStyle: DarkTextTheme.textButtonStyle,
        ),
      ),

      // Input decorator teması
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: DarkThemeColors.inputFill,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ThemeDimensions.radiusS),
          borderSide: BorderSide(color: DarkThemeColors.inputBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ThemeDimensions.radiusS),
          borderSide: BorderSide(color: DarkThemeColors.inputFocused, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ThemeDimensions.radiusS),
          borderSide: BorderSide(color: DarkThemeColors.inputBorder),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: ThemeDimensions.spacingL, vertical: ThemeDimensions.spacingL),
        hintStyle: DarkTextTheme.hintStyle,
        errorStyle: DarkTextTheme.errorStyle,
      ),

      // Switch teması
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.selected)) {
            return DarkThemeColors.primaryLight;
          }
          return Colors.grey;
        }),
        trackColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.selected)) {
            return DarkThemeColors.primary.withValues(alpha: 0.5);
          }
          return Colors.grey.withValues(alpha: 0.5);
        }),
      ),

      // Icon teması
      iconTheme: IconThemeData(color: DarkThemeColors.onSurface, size: ThemeDimensions.iconSizeM),
    );
  }
}
