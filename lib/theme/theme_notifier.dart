import 'package:flutter/material.dart';

import 'movie_theme_preferfences.dart';

class ThemeNotifier extends ChangeNotifier {
  late bool _isDark;
  late MovieThemePreferences _preferences;
  bool get isDark => _isDark;

  ThemeNotifier() {
    _isDark = false;
    _preferences = MovieThemePreferences();
    getPreferences();
  }
  // Switching themes
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}