import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/image_routes.dart';
import '../../theme/movie_color.dart';
import '../../theme/movie_theme.dart';
import '../../theme/theme_notifier.dart';

class MenuW extends StatelessWidget {
  const MenuW({
    super.key,
    required this.theme,
    required this.themeNotifier,
  });

  final ThemeNotifier themeNotifier;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            profileOptionData[index][0],
            style: theme.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w600,
              color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
            ),
          ),
          minLeadingWidth: 20,
          contentPadding: const EdgeInsets.all(0),
          visualDensity: VisualDensity(vertical: -2.w),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (index == 4)
                Text(
                  'English (US)',
                  style: theme.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
                  ),
                ),
              if (index == 5)
                Switch(
                  activeColor: MovieColors.white,
                  inactiveThumbColor: theme.primaryColor,
                  activeTrackColor: theme.primaryColor,
                  value: themeNotifier.isDark,
                  onChanged: (value) {
                    themeNotifier.isDark ? themeNotifier.isDark = false : themeNotifier.isDark = true;
                  },
                ),
              if (index != 5) ...[
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  ImagesRoute.icArrowRight,
                  color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
                ),
              ],
            ],
          ),
          leading: SvgPicture.asset(
            profileOptionData[index][1],
            color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
          ),
        ),
      ),
    );
  }
}

List get profileOptionData => [
      ['Edit Profile', ImagesRoute.icProfile],
      ['Notification', ImagesRoute.icBell],
      ['Download', ImagesRoute.icDownload],
      ['Security', ImagesRoute.icSecurity],
      ['Language', ImagesRoute.icLanguage],
      ['Dark Mode', ImagesRoute.icEye],
      ['Help Center', ImagesRoute.icHelp],
      ['Privacy policy', ImagesRoute.icPrivacy],
    ];
