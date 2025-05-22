import 'package:flutter/material.dart';

import '../theme.dart';

/// Manages access to app themes in a consistent way
class ThemeManager {
  /// Get the light theme data
  static ThemeData get lightTheme => LightTheme.theme;

  /// Get the dark theme data
  static ThemeData get darkTheme => DarkTheme.theme;
}
