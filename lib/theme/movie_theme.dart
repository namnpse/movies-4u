import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_4u/theme/movie_color.dart';

class MovieTheme {
  static TextTheme appTextTheme = TextTheme(
    displayLarge: GoogleFonts.urbanist(fontSize: 48.sp, fontWeight: FontWeight.w700),
    displayMedium: GoogleFonts.urbanist(fontSize: 40.sp, fontWeight: FontWeight.w700),
    displaySmall: GoogleFonts.urbanist(fontSize: 32.sp, fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.urbanist(fontSize: 24.sp, fontWeight: FontWeight.w700),
    headlineSmall: GoogleFonts.urbanist(fontSize: 20.sp, fontWeight: FontWeight.w700),
    titleLarge: GoogleFonts.urbanist(fontSize: 18.sp, fontWeight: FontWeight.w700),
    bodyLarge: GoogleFonts.urbanist(fontSize: 16.sp, fontWeight: FontWeight.w700),
    bodyMedium: GoogleFonts.urbanist(fontSize: 14.sp, fontWeight: FontWeight.w700),
    bodySmall: GoogleFonts.urbanist(fontSize: 12.sp, fontWeight: FontWeight.w700),
    labelSmall: GoogleFonts.urbanist(fontSize: 10.sp, fontWeight: FontWeight.w700),
  );

  static ThemeData lightMode = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: MovieColors.white),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: MovieColors.white,
        unselectedLabelStyle:
        GoogleFonts.urbanist(fontSize: 10.sp, fontWeight: FontWeight.w500),
        selectedLabelStyle: GoogleFonts.urbanist(fontSize: 10.sp, fontWeight: FontWeight.w700),
      ),
      scaffoldBackgroundColor: MovieColors.white,
      brightness: Brightness.light,
      primaryColor: MovieColors.primary,
      textTheme: appTextTheme);

  static ThemeData darkMode = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: MovieColors.dark1),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedLabelStyle:
        GoogleFonts.urbanist(fontSize: 10.sp, fontWeight: FontWeight.w500),
        selectedLabelStyle: GoogleFonts.urbanist(fontSize: 10.sp, fontWeight: FontWeight.w700),
        elevation: 0,
        backgroundColor: const Color(0xff181A20).withOpacity(0.8),
      ),
      scaffoldBackgroundColor: MovieColors.dark1,
      brightness: Brightness.dark,
      primaryColor: MovieColors.primary,
      textTheme: appTextTheme);
}
