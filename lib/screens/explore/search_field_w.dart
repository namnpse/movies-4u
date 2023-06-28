import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../constants/image_routes.dart';
import '../../theme/movie_theme.dart';
import '../../theme/theme_notifier.dart';

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