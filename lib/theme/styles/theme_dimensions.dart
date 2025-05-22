import 'package:flutter/material.dart';

/// Standardized dimensions for consistent UI spacing and sizing
class ThemeDimensions {
  ThemeDimensions._(); // Private constructor

  // Spacing
  static const double spacingXxs = 2.0;
  static const double spacingXs = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 12.0;
  static const double spacingL = 16.0;
  static const double spacingXl = 24.0;
  static const double spacingXxl = 32.0;
  static const double spacingXxxl = 48.0;

  // Border radius
  static const double radiusXs = 4.0;
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXl = 24.0;
  static const double radiusCircular = 999.0;

  // Component sizes
  static const double buttonHeight = 48.0;
  static const double smallButtonHeight = 36.0;
  static const double inputHeight = 56.0;
  static const double smallInputHeight = 40.0;
  static const double iconSizeS = 16.0;
  static const double iconSizeM = 24.0;
  static const double iconSizeL = 32.0;

  // Shadow elevations
  static const double elevationNone = 0.0;
  static const double elevationXs = 1.0;
  static const double elevationS = 2.0;
  static const double elevationM = 4.0;
  static const double elevationL = 8.0;
  static const double elevationXl = 16.0;

  // Helpers
  static EdgeInsets paddingAll(double value) => EdgeInsets.all(value);
  static EdgeInsets paddingHorizontal(double value) =>
      EdgeInsets.symmetric(horizontal: value);
  static EdgeInsets paddingVertical(double value) =>
      EdgeInsets.symmetric(vertical: value);

  static BorderRadius radiusAll(double value) =>
      BorderRadius.all(Radius.circular(value));
}
