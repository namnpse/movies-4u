import 'package:shared_preferences/shared_preferences.dart';
import 'movie_theme.dart';

class MovieThemePreferences {
  static const THEME_KEY = "theme_key";

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    MovieDynamicColorBuilder.isDarkMode = value;
    sharedPreferences.setBool(THEME_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    MovieDynamicColorBuilder.isDarkMode = sharedPreferences.getBool(THEME_KEY) ?? false;
    return sharedPreferences.getBool(THEME_KEY) ?? false;
  }
}