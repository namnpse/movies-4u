import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/theme_notifier.dart';
import 'widgets/movie_list_label_w.dart';
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
    return Consumer<ThemeNotifier>(builder: (context, ThemeNotifier themeNotifier, child) => const Scaffold(
        body: CustomScrollView(
          slivers: [
            TopHeader(),
            MovieListTitle(title: 'Top 10 Movies This Week'),
            MovieList(itemCount: 6, movieCategory: 'top_movies'),
            MovieListTitle(title: 'New Releases'),
            MovieList(itemCount: 6, movieCategory: 'new_movies'),
            SliverPadding(padding: EdgeInsets.only(top: 24)),
          ],
        ),
      ),
    );
  }
}