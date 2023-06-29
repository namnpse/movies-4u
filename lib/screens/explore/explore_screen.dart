import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/widgets/movie_grid.dart';
import '../../theme/theme_notifier.dart';
import 'movie_filter.dart';
import 'search_and_filter_w.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  FocusNode searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    searchFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, value, child) => Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SearchAndFilter(),
              SliverToBoxAdapter(
                child: MovieFilters(),
              ),
              const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                sliver: MoviesGrid(
                  childCount: 6,
                  movieCategory: 'new_movies',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }
}
