import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/image_routes.dart';
import '../../../theme/movie_color.dart';
import '../../../theme/movie_gradients.dart';
import '../../../theme/movie_theme.dart';
import '../../../theme/theme_notifier.dart';

class PremiumCard extends StatelessWidget {
  final ThemeNotifier themeNotifier;

  const PremiumCard({
    super.key,
    required this.themeNotifier,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      // height: 200,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: MovieGradients.redGradient,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: themeNotifier.isDark ? theme.scaffoldBackgroundColor : MovieColors.white,
        ),
        child: Row(
          children: [
            SvgPicture.asset(ImagesRoute.icPremium),
            SizedBox(
              width: 20.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Go Premium!',
                      style: theme.textTheme.headlineMedium!.copyWith(
                        color: theme.primaryColor,
                      ),
                      textAlign: TextAlign.left),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Enjoy watching Full-HD movies, \nwithout restrictions and without ads',
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: MovieDynamicColorBuilder.getGrey700AndGrey300(context),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            const Spacer(),
            SvgPicture.asset(ImagesRoute.icArrowRight),
          ],
        ),
      ),
    );
  }
}
