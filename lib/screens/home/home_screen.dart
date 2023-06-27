import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/movie_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Image.asset('assets/images/home_header.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/app_logo.svg'),
                      const Spacer(),
                      SvgPicture.asset('assets/images/icon_search.svg'),
                      const SizedBox(
                        width: 24,
                      ),
                      SvgPicture.asset('assets/images/icon_bell.svg'),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 24,
                  left: 24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Strange 2',
                        style: theme.textTheme.headlineMedium!.copyWith(color: MovieColors.white),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Action, Superhero, Science Fiction, ...',
                        style: theme.textTheme.bodySmall!.copyWith(color: MovieColors.white, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/images/icon_play.svg'),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Play',
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: MovieColors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(color: MovieColors.white, width: 2),
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/images/icon_plus.svg'),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'My List',
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: MovieColors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
