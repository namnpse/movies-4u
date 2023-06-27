import 'package:flutter/material.dart';

import '../../../theme/color_builder.dart';

class MovieListTitle extends StatelessWidget {
  final String title;

  const MovieListTitle({
    super.key,
    required this.theme,
    required this.title,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(24),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Text(
              title,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: AppFontColorBuilder.getGrey900AndWhite(context),
              ),
            ),
            const Spacer(),
            Text(
              'View all',
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
