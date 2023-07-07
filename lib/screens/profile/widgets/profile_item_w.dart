import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/image_routes.dart';
import '../../../constants/movie_static_data.dart';
import '../../../theme/movie_color.dart';
import '../../../theme/movie_theme.dart';
import '../../../theme/theme_notifier.dart';

class ProfileOptionItem extends StatelessWidget {
  final int index;
  final ThemeNotifier themeNotifier;

  const ProfileOptionItem({
    super.key,
    required this.index,
    required this.themeNotifier,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ListTile(
      title: Text(
        MovieStaticData.profileOptionsData[index][0],
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
      leading: Padding(
        padding: EdgeInsets.only(left: index < 3 ? 3 : 0, right: index < 3 ? 4 : 0),
        child: SvgPicture.asset(
          MovieStaticData.profileOptionsData[index][1],
          color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
          fit: BoxFit.cover,
          // width: 24,
        ),
      ),
    );
  }
}
