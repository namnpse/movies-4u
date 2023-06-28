import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/image_routes.dart';
import '../../theme/movie_color.dart';
import '../download/download_screen.dart';
import '../explore/explore_screen.dart';
import '../favorite/favorite_screen.dart';
import '../home/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  
  int _selectedBottomNavIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedBottomNavIndex, children:  _tabs),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: BottomNavigationBar(
              currentIndex: _selectedBottomNavIndex,
              onTap: (value) {
                setState(() {
                  _selectedBottomNavIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: MovieColors.primary,
              unselectedItemColor: MovieColors.grey500,
              elevation: 0.0,
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icHome),
                    ),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icHomeSelected),
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icExplore),
                    ),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icExploreSelected),
                    ),
                    label: 'Explore'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icMyList),
                    ),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icMyListSelected),
                    ),
                    label: 'My List'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icDownload),
                    ),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icDownloadSelected),
                    ),
                    label: 'Download'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icProfile),
                    ),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SvgPicture.asset(ImagesRoute.icProfileSelected),
                    ),
                    label: 'Profile'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> get _tabs => [
    const HomeScreen(),
    const ExploreScreen(),
    const FavoriteScreen(),
    const DownloadScreen(),
    const HomeScreen(),
  ];
}