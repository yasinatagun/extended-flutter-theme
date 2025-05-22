import 'package:flutter/material.dart';

/// Standardized shadows for consistent elevation effects
class ThemeShadows {
  ThemeShadows._(); // Private constructor

  // Light theme shadows
  static List<BoxShadow> get none => [];

  static List<BoxShadow> get xs => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 1,
      offset: const Offset(0, 1),
    ),
  ];

  static List<BoxShadow> get small => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      blurRadius: 2,
      offset: const Offset(0, 1),
    ),
  ];

  static List<BoxShadow> get medium => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      blurRadius: 4,
      offset: const Offset(0, 2),
    ),
  ];

  static List<BoxShadow> get large => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      blurRadius: 8,
      offset: const Offset(0, 4),
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 1,
      offset: const Offset(0, 1),
    ),
  ];

  static List<BoxShadow> get extraLarge => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      blurRadius: 12,
      offset: const Offset(0, 8),
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 4,
      offset: const Offset(0, 2),
    ),
  ];

  // Dark theme shadows - more subtle
  static List<BoxShadow> get noneDark => [];

  static List<BoxShadow> get xsDark => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.2),
      blurRadius: 1,
      offset: const Offset(0, 1),
    ),
  ];

  static List<BoxShadow> get smallDark => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.25),
      blurRadius: 2,
      offset: const Offset(0, 1),
    ),
  ];

  static List<BoxShadow> get mediumDark => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.3),
      blurRadius: 4,
      offset: const Offset(0, 2),
    ),
  ];

  static List<BoxShadow> get largeDark => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.35),
      blurRadius: 8,
      offset: const Offset(0, 4),
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.2),
      blurRadius: 1,
      offset: const Offset(0, 1),
    ),
  ];

  static List<BoxShadow> get extraLargeDark => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.4),
      blurRadius: 12,
      offset: const Offset(0, 8),
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.2),
      blurRadius: 4,
      offset: const Offset(0, 2),
    ),
  ];

  // Helper method for theme-aware shadows
  static List<BoxShadow> resolveShadow(
    BuildContext context,
    List<BoxShadow> lightShadow,
    List<BoxShadow> darkShadow,
  ) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? lightShadow : darkShadow;
  }

  // Common use cases
  static List<BoxShadow> cardShadow(BuildContext context) {
    return resolveShadow(context, small, smallDark);
  }

  static List<BoxShadow> buttonShadow(BuildContext context) {
    return resolveShadow(context, medium, mediumDark);
  }

  static List<BoxShadow> dialogShadow(BuildContext context) {
    return resolveShadow(context, large, largeDark);
  }

  static List<BoxShadow> bottomSheetShadow(BuildContext context) {
    return resolveShadow(context, extraLarge, extraLargeDark);
  }
}
