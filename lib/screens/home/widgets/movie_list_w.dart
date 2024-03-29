import 'package:flutter/material.dart';

import '../../../common/widgets/movie_card_item_w.dart';

class MovieList extends StatelessWidget {
  final int itemCount;
  final String movieCategory;

  const MovieList({
    super.key,
    required this.itemCount,
    required this.movieCategory,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          itemCount: itemCount,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => MovieCardItem(
            itemIndex: index,
            itemCount: itemCount,
            movieCategory: movieCategory,
            needsSpacing: true,
          ),
        ),
      ),
    );
  }
}
