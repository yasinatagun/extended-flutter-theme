import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme.dart';

/// Tema değişimini yöneten Notifier - ANİMASYONSUZ
class ThemeModeNotifier extends Notifier<ThemeMode> {
  late final ThemeStorage _themeStorage = ThemeStorage();
  bool _isLoading = true;

  @override
  ThemeMode build() {
    _loadSavedTheme();
    return ThemeMode.system;
  }

  Future<void> _loadSavedTheme() async {
    try {
      final savedTheme = await _themeStorage.getThemeMode();
      state = savedTheme;
    } catch (e) {
      state = ThemeMode.system;
    } finally {
      _isLoading = false;
    }
  }

  void toggleTheme() {
    if (_isLoading) return;

    final newTheme = state == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
    setTheme(newTheme);
  }

  void setTheme(ThemeMode themeMode) {
    state = themeMode;
    _themeStorage.saveThemeMode(themeMode);
  }

  void resetToSystemTheme() {
    state = ThemeMode.system;
    _themeStorage.saveThemeMode(ThemeMode.system);
  }

  /// ✅ Kullanıcıya boolean şeklinde dönelim
  bool get isDarkMode => state == ThemeMode.dark;
}

// Provider definition
final themeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(() {
  return ThemeModeNotifier();
});
