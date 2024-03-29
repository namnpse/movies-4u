import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../constants/image_routes.dart';
import '../../theme/movie_theme.dart';
import '../../theme/theme_notifier.dart';

class MovieAppBar extends StatelessWidget {
  final String appBarTitle;
  final List<Widget>? actions;

  const MovieAppBar({
    super.key,
    required this.appBarTitle,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AppBar(
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Text(
          appBarTitle,
          style: theme.textTheme.headlineMedium!.copyWith(
            color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
          ),
        ),
      ),
      actions: actions,
      leading: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24),
        child: SvgPicture.asset(
          ImagesRoute.appLogo,
          height: 32,
          width: 32,
        ),
      ),
    );
  }
}

class SearchAppBarAction extends StatelessWidget {
  const SearchAppBarAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, ThemeNotifier themeNotifier, child) => Padding(
        padding: const EdgeInsets.only(top: 24, right: 24),
        child: SvgPicture.asset(
          ImagesRoute.icSearch,
          color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
        ),
      ),
    );
  }
}
