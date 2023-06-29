import 'package:flutter/material.dart';
import '../../../theme/movie_theme.dart';

class FilterTitle extends StatelessWidget {
  final String title;

  const FilterTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: MovieDynamicColorBuilder.getGrey800AndWhite(context),
            ),
          ),
        ],
      ),
    );
  }
}