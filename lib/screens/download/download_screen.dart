import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/widgets/search_app_bar.dart';
import '../../theme/theme_notifier.dart';
import 'widgets/download_movie_item.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(builder: (context, ThemeNotifier themeNotifier, child) => Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 56),
          child: MovieAppBar(
              appBarTitle: 'Download', actions: [SearchAppBarAction()]),
        ),
        body: SafeArea(
          child: Card(
            color: Colors.transparent,
            elevation: 0,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) => DownloadMovieItem(index: index, isDeleting: false,),
            ),
          ),
        ),
      ),
    );
  }
}