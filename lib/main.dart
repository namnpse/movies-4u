import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/base/main_screen.dart';
import 'screens/home/home_screen.dart';
import 'theme/movie_theme.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MovieTheme.lightMode,
        darkTheme: MovieTheme.darkMode,
        themeMode: ThemeMode.system,
        home: const BaseScreen(),
      ),
    );
  }
}
