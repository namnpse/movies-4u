import 'package:flutter/material.dart';

import 'movie_color.dart';

class AppFontColorBuilder {
  static Color getGrey900AndWhite(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return isLightMode ? MovieColors.grey900 : MovieColors.white;
  }

// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
}