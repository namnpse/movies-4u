
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_4u/theme/movie_color.dart';

class MovieTheme {
  ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: MovieColors.white,
    brightness: Brightness.light,
    primaryColor: MovieColors.primary,
    textTheme: TextTheme(
      displayLarge:
      GoogleFonts.urbanist(fontSize: 48, fontWeight: FontWeight.w700),
      displayMedium:
      GoogleFonts.urbanist(fontSize: 40, fontWeight: FontWeight.w700),
      displaySmall:
      GoogleFonts.urbanist(fontSize: 32, fontWeight: FontWeight.w700),
      headlineMedium:
      GoogleFonts.urbanist(fontSize: 24, fontWeight: FontWeight.w700),
      headlineSmall:
      GoogleFonts.urbanist(fontSize: 20, fontWeight: FontWeight.w700),
      titleLarge:
      GoogleFonts.urbanist(fontSize: 18, fontWeight: FontWeight.w700),
      bodyLarge:
      GoogleFonts.urbanist(fontSize: 16, fontWeight: FontWeight.w700),
      bodyMedium:
      GoogleFonts.urbanist(fontSize: 14, fontWeight: FontWeight.w700),
      bodySmall:
      GoogleFonts.urbanist(fontSize: 12, fontWeight: FontWeight.w700),
    ),
  );
}

class AppFontColorBuilder {
  static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? MovieColors.grey900 : MovieColors.white;

// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
// static Color getGrey900AndWhite(BuildContext context) => Theme.of(context).brightness == ThemeMode.light ? AppColors.grey900 : AppColors.white;
}
