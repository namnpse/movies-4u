import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/widgets/search_app_bar.dart';
import '../../constants/image_routes.dart';
import '../../theme/color_builder.dart';
import '../../theme/movie_gradients.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 56),
        child: MovieAppBar(
          appBarTitle: 'Profile',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.red,
                      foregroundImage: AssetImage(ImagesRoute.userProfileImage),
                      radius: 60,
                    ),
                    Positioned(child: SvgPicture.asset(ImagesRoute.icEditProfile)),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  'Nima Naderi',
                  style: theme.textTheme.headlineSmall!.copyWith(
                    color: AppFontColorBuilder.getGrey900AndWhite(context),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'nima.er.84@gmail.com',
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: AppFontColorBuilder.getGrey900AndWhite(context), fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 24),
                Container(
                  // height: 200,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    gradient: MovieGradients.redGradient,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: MediaQuery.of(context).platformBrightness == Brightness.light
                          ? Colors.white
                          : theme.scaffoldBackgroundColor,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImagesRoute.icPremium),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Join Premium!',
                                  style: theme.textTheme.headlineMedium!.copyWith(color: theme.primaryColor),
                                  textAlign: TextAlign.left),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Enjoy watching Full-HD movies, \nwithout restrictions and without ads',
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: AppFontColorBuilder.getGrey700AndGrey300(context),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(ImagesRoute.icArrowRight),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
