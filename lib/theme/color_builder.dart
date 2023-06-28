import 'package:flutter/material.dart';

import 'movie_color.dart';

class AppFontColorBuilder {
  static Color getGrey900AndWhite(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return isLightMode ? MovieColors.grey900 : MovieColors.white;
  }

  static Color getGrey800AndWhite(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    bool isDarkMode = brightness == Brightness.dark;

    return isLightMode
        ? MovieColors.grey800
        : isDarkMode
        ? MovieColors.white
        : Colors.blue;
  }

  static Color getGrey800AndGrey300(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    bool isDarkMode = brightness == Brightness.dark;

    return isLightMode
        ? MovieColors.grey800
        : isDarkMode
        ? MovieColors.grey300
        : Colors.blue;
  }

  static Color getGrey100AndDark2(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    bool isDarkMode = brightness == Brightness.dark;

    return isLightMode
        ? MovieColors.grey100
        : isDarkMode
        ? MovieColors.dark2
        : Colors.blue;
  }

  static Color getGrey600AndGrey400(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    bool isDarkMode = brightness == Brightness.dark;

    return isLightMode
        ? MovieColors.grey400
        : isDarkMode
        ? MovieColors.grey600
        : Colors.blue;
  }

// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
}