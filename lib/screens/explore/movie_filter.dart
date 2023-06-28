import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/movie_color.dart';
import '../../../constants/movie_static_data.dart';

class MovieFilters extends StatefulWidget {
  MovieFilters({
    super.key,
    this.selectedIndex,
  });

  int? selectedIndex;

  @override
  State<MovieFilters> createState() => _MovieFiltersState();
}

class _MovieFiltersState extends State<MovieFilters> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              widget.selectedIndex = index;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            margin: EdgeInsets.only(
                right: index == 4 ? 24 : 0, left: index == 0 ? 24 : 12),
            decoration: BoxDecoration(
              color: widget.selectedIndex != null
                  ? widget.selectedIndex == index
                  ? theme.primaryColor
                  : Colors.transparent
                  : theme.primaryColor,
              borderRadius: BorderRadius.circular(100),
              border: widget.selectedIndex != null
                  ? Border.all(
                  width: 2,
                  color: widget.selectedIndex == index
                      ? Colors.transparent
                      : theme.primaryColor)
                  : null,
            ),
            child: Center(
              child: Text(
                MovieStaticData.movieFilters[index],
                style: theme.textTheme.bodyLarge!.copyWith(
                    color: widget.selectedIndex != null
                        ? widget.selectedIndex == index
                        ? MovieColors.white
                        : theme.primaryColor
                        : MovieColors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}