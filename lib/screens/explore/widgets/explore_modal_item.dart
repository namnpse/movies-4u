import 'package:flutter/material.dart';

import '../../../constants/movie_static_data.dart';
import '../movie_filter.dart';
import 'filter_title.dart';

class ExploreModalItem extends StatelessWidget {
  final int index;

  const ExploreModalItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterTitle(title: MovieStaticData.exploreModalTitles[index]),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: MovieFilters(selectedIndex: 3),
        ),
      ],
    );
  }
}
