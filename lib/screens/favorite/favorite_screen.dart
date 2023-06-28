import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/image_routes.dart';
import '../../theme/color_builder.dart';
import '../../theme/movie_color.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MovieColors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Text(
            'My List',
            style: theme.textTheme.headlineMedium!.copyWith(color: AppFontColorBuilder.getGrey900AndWhite(context)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 24, right: 24),
            child: SvgPicture.asset(
              ImagesRoute.icSearch,
              color: AppFontColorBuilder.getGrey900AndWhite(context),
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24),
          child: SvgPicture.asset(
            ImagesRoute.appLogo,
            height: 32,
            width: 32,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            Image.asset(
              brightness == Brightness.light ? ImagesRoute.emptyListLight : ImagesRoute.emptyListDark,
              height: 220.h,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(height: 44),
            Text('Your List is Empty', style: theme.textTheme.headlineMedium!.copyWith(color: theme.primaryColor)),
            const SizedBox(height: 16),
            Text(
              'It seems that you haven\'t added\n any movies to the list',
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                  color: AppFontColorBuilder.getGrey800AndWhite(context), fontWeight: FontWeight.w500, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
