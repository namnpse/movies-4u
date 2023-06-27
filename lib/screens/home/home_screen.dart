import 'package:flutter/material.dart';

import 'widgets/movie_card_item_w.dart';
import 'widgets/movie_list_tile_w.dart';
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
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            TopHeader(theme: theme),
            MovieListTitle(theme: theme, title: 'Top 10 Movies This Week'),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      MovieCardItem(itemIndex: index),
                ),
              ),
            ),
            MovieListTitle(theme: theme, title: 'New Releases'),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      MovieCardItem(itemIndex: index),
                ),
              ),
            ),
            const SliverPadding(padding:  EdgeInsets.only(top: 24)),
          ],
        ),
      ),
    );
  }
}