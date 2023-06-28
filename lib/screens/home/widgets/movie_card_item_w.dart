import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_4u/theme/movie_color.dart';

import '../../../utils/random_movie.dart';

class MovieCardItem extends StatelessWidget {
  final int itemIndex;
  final int itemCount;
  final String movieCategory;

  const MovieCardItem({
    Key? key,
    required this.itemIndex,
    required this.itemCount,
    required this.movieCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      height: 200,
      width: 150.w,
      margin: EdgeInsets.only(left: itemIndex == 0 ? 24.w : 10, right: itemIndex == itemCount - 1 ? 24.w : 0),
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/$movieCategory/$itemIndex.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: const EdgeInsets.all(12),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
          decoration: BoxDecoration(color: theme.primaryColor, borderRadius: BorderRadius.circular(6)),
          child: Text(
            randomMovieRating(minPoint: 7, maxPoint: 10),
            style: theme.textTheme.labelSmall!.copyWith(
              fontWeight: FontWeight.w600,
              color: MovieColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
