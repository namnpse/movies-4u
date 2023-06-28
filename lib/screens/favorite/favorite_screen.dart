import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_4u/theme/theme_notifier.dart';
import 'package:provider/provider.dart';

import '../../common/widgets/search_app_bar.dart';
import '../../constants/image_routes.dart';
import '../../theme/color_builder.dart';
import '../../theme/movie_color.dart';
import '../../theme/movie_theme.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Consumer<ThemeNotifier>(
      builder: (context, ThemeNotifier themeNotifier, child) => Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 56),
          child: MovieAppBar(
            appBarTitle: 'My List',
            actions: [
              SearchAppBarAction(),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              Image.asset(
                themeNotifier.isDark ? ImagesRoute.emptyListDark : ImagesRoute.emptyListLight,
                height: 220.h,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 44),
              Text(
                'Your List is Empty',
                style: theme.textTheme.headlineMedium!.copyWith(
                  color: theme.primaryColor,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'It seems that you haven\'t added\n any movies to the list',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge!.copyWith(
                    color: MovieDynamicColorBuilder.getGrey800AndWhite(context),
                    fontWeight: FontWeight.w500,
                    height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
