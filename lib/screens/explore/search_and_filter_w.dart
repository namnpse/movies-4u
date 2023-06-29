import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/image_routes.dart';
import '../../constants/movie_static_data.dart';
import '../../theme/movie_color.dart';
import '../../theme/movie_theme.dart';
import '../../utils/show_modal.dart';
import 'search_field_w.dart';
import 'widgets/explore_modal_item.dart';

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
    return GestureDetector(
      onTap: () => showAppModal(
        context: context,
        initChildSize: .7,
        minChildSize: .4,
        maxChildSize: .9,
        modalTitle: 'Sort & Filter',
        primaryButtonTitle: 'Apply',
        secondaryButtonTitle: 'Reset',
        mainModalContent: Card(
          color: Colors.transparent,
          elevation: 0,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: MovieStaticData.exploreModalTitles.length,
            itemBuilder: (context, index) => ExploreModalItem(index: index),
          ),
        ),
      ),
      child: Container(
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
      ),
    );
  }
}

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
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: theme.textTheme.headlineSmall!.copyWith(
          color: MovieDynamicColorBuilder.getGrey800AndWhite(context),
        ),
      ),
    );
  }
}