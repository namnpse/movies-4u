import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'screens/base/main_screen.dart';
import 'screens/home/home_screen.dart';
import 'theme/movie_theme.dart';
import 'theme/theme_notifier.dart';

void main() {
  // runApp(
  //   DevicePreview(
  //     builder: (context) => const MyApp(),
  //     enabled: !kReleaseMode,
  //   ),
  // );
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) => ChangeNotifierProvider(
        create: (context) => ThemeNotifier(),
        child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier themeNotifier, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeNotifier.isDark ? MovieTheme.darkMode : MovieTheme.lightMode,
            home: const BaseScreen(),
          ),
        ),
      ),
    );
  }
}
