import 'package:flutter/material.dart';

/// Standardized gradients for the application
class ThemeGradients {
  ThemeGradients._(); // Private constructor

  // Get gradient based on current theme
  static LinearGradient resolveGradient(
    BuildContext context,
    LinearGradient lightGradient,
    LinearGradient darkGradient,
  ) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? lightGradient : darkGradient;
  }
}

/// Light theme gradients
class LightThemeGradients {
  LightThemeGradients._(); // Private constructor

  // Primary gradient
  static const LinearGradient primary = LinearGradient(
    colors: [
      Color(0xFF6873BB),
      Color(0xFF4F5A96),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Background gradients
  static const LinearGradient background = LinearGradient(
    colors: [
      Color(0xFFF6F8FE),
      Color(0xFFEEF1FA),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Card gradients
  static const LinearGradient card = LinearGradient(
    colors: [
      Colors.white,
      Color(0xFFF8F8F8),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Button gradients
  static const LinearGradient primaryButton = LinearGradient(
    colors: [
      Color(0xFF6873BB),
      Color(0xFF5A65AB),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}

/// Dark theme gradients
class DarkThemeGradients {
  DarkThemeGradients._(); // Private constructor

  // Primary gradient
  static const LinearGradient primary = LinearGradient(
    colors: [
      Color(0xFF6873BB),
      Color(0xFF4F5A96),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Background gradients
  static const LinearGradient background = LinearGradient(
    colors: [
      Color(0xFF121212),
      Color(0xFF1A1A1A),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Card gradients
  static const LinearGradient card = LinearGradient(
    colors: [
      Color(0xFF1E1E1E),
      Color(0xFF252525),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Button gradients
  static const LinearGradient primaryButton = LinearGradient(
    colors: [
      Color(0xFF6873BB),
      Color(0xFF5A65AB),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
