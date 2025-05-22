import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeStorage {
  static const String _themeKey = 'app_theme_mode';
  SharedPreferences? _prefsInstance;

  Future<SharedPreferences> get _prefs async {
    _prefsInstance ??= await SharedPreferences.getInstance();
    return _prefsInstance!;
  }

  Future<bool> saveThemeMode(ThemeMode themeMode) async {
    try {
      final prefs = await _prefs;
      return await prefs.setInt(_themeKey, themeMode.index);
    } catch (e) {
      debugPrint('Tema kaydedilirken hata oluştu: $e');
      return false;
    }
  }

  Future<ThemeMode> getThemeMode() async {
    try {
      final prefs = await _prefs;
      final themeIndex = prefs.getInt(_themeKey);
      return themeIndex != null &&
              themeIndex >= 0 &&
              themeIndex < ThemeMode.values.length
          ? ThemeMode.values[themeIndex]
          : ThemeMode.system;
    } catch (e) {
      debugPrint('Tema yüklenirken hata oluştu: $e');
      return ThemeMode.system;
    }
  }

  Future<bool> clearThemePreference() async {
    try {
      final prefs = await _prefs;
      return await prefs.remove(_themeKey);
    } catch (e) {
      debugPrint('Tema tercihi temizlenirken hata oluştu: $e');
      return false;
    }
  }

  void dispose() {
    _prefsInstance = null;
  }
}
