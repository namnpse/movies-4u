import 'package:flutter/material.dart';

import 'widgets/movie_list_tile_w.dart';
import 'widgets/movie_list_w.dart';
import 'widgets/top_header_w.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          TopHeader(theme: theme),
          MovieListTitle(theme: theme, title: 'Top 10 Movies This Week'),
          const MovieList(itemCount: 6, movieCategory: 'top_movies'),
          MovieListTitle(theme: theme, title: 'New Releases'),
          const MovieList(itemCount: 6, movieCategory: 'new_movies'),
          const SliverPadding(padding: EdgeInsets.only(top: 24)),
        ],
      ),
    );
  }
}