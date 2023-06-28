import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_4u/theme/theme_notifier.dart';
import 'package:provider/provider.dart';

import '../../constants/image_routes.dart';
import '../../theme/movie_color.dart';
import '../../theme/movie_theme.dart';

class SearchAndFilter extends StatefulWidget {
  const SearchAndFilter({
    super.key,
  });

  @override
  State<SearchAndFilter> createState() => _SearchAndFilterState();
}

class _SearchAndFilterState extends State<SearchAndFilter> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: const [
            SearchField(),
            SizedBox(width: 12),
            FilterButton()
          ],
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56.w,
      height: 56.h,
      padding: EdgeInsets.all(16.h),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: MovieColors.redTransparent.withOpacity(0.1),
      ),
      child: SvgPicture.asset(
        ImagesRoute.icFilter,
      ),
    );
  }
}

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
  });


  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final FocusNode searchFocusNode = FocusNode();

  @override
  void initState() {
    searchFocusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Consumer<ThemeNotifier>(builder: (context, value, child) => Expanded(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: 56.h,
          decoration: BoxDecoration(
            color: MovieDynamicColorBuilder.getGrey100AndDark2(context),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: searchFocusNode.hasFocus
                  ? theme.primaryColor
                  : MovieDynamicColorBuilder.getGrey100AndDark2(context),
              width: 1,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            focusNode: searchFocusNode,
            style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: MovieDynamicColorBuilder.getGrey900AndWhite(context)),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Search',
              hintStyle: theme.textTheme.bodyMedium!.copyWith(
                  color:
                  MovieDynamicColorBuilder.getGrey600AndGrey400(context),
                  fontWeight: FontWeight.w500),
              icon: SvgPicture.asset(
                ImagesRoute.icSearch,
                color: searchFocusNode.hasFocus
                    ? theme.primaryColor
                    : MovieDynamicColorBuilder.getGrey600AndGrey400(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}