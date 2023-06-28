import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/image_routes.dart';
import '../../../theme/movie_color.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              begin: FractionalOffset.bottomLeft,
              end: FractionalOffset.center,
              colors: [
                Color(0xff181A20),
                Colors.white,
              ],
            ).createShader(bounds),
            blendMode: BlendMode.modulate,
            child: Image.asset(
              ImagesRoute.homeTopHeaderImage,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Row(
              children: [
                SvgPicture.asset(ImagesRoute.appLogo),
                const Spacer(),
                SvgPicture.asset(ImagesRoute.icSearch),
                const SizedBox(
                  width: 24,
                ),
                SvgPicture.asset(ImagesRoute.icBell),
              ],
            ),
          ),
          Positioned(
            bottom: 24.h,
            left: 24.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Strange 2',
                  style: theme.textTheme.headlineMedium!
                      .copyWith(color: MovieColors.white),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Action, Superhero, Science Fiction, ...',
                  style: theme.textTheme.bodySmall!.copyWith(
                      color: MovieColors.white, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8.h,
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
                          SvgPicture.asset(ImagesRoute.icPlay),
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
                          side: const BorderSide(
                              color: MovieColors.white, width: 2),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset(ImagesRoute.icPlus),
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
    );
  }
}
