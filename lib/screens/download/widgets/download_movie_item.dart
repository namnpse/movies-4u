import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/image_routes.dart';
import '../../../constants/movie_static_data.dart';
import '../../../theme/movie_theme.dart';
import '../../../utils/show_modal.dart';

class DownloadMovieItem extends StatelessWidget {
  final int index;
  final bool isDeleting;

  const DownloadMovieItem({
    Key? key,
    required this.index,
    required this.isDeleting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      margin: !isDeleting ? EdgeInsets.only(top: index == 0 ? 32.h : 16.h, bottom: index == 5 ? 32.h : 0) : null,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/downloads/$index.png', width: 150.w),
              SvgPicture.asset(ImagesRoute.icPlay, height: 20, width: 20),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MovieStaticData.downloadMovieNames[index],
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '1h 42m 33s',
                    style: theme.textTheme.bodyMedium!.copyWith(
                        color: MovieDynamicColorBuilder.getGrey800AndGrey300(context), fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: theme.primaryColor.withOpacity(0.1), borderRadius: BorderRadius.circular(6)),
                        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                        child: Text(
                          '1.4GB',
                          style: theme.textTheme.labelSmall!
                              .copyWith(color: theme.primaryColor, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Spacer(),
                      if (!isDeleting) ...{
                        GestureDetector(
                          onTap: () => showAppModal(
                            context: context,
                            modalTitle: 'Delete',
                            primaryButtonTitle: 'Confirm',
                            secondaryButtonTitle: 'Cancel',
                            mainModalContent: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: double.infinity,
                                ),
                                Text(
                                  'Are you sure you want to delete this \nmovie download?',
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineSmall!.copyWith(
                                    color: MovieDynamicColorBuilder.getGrey800AndWhite(context),
                                  ),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                                  child: DownloadMovieItem(
                                    index: index,
                                    isDeleting: true,
                                  ),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                              ],
                            ),
                            initChildSize: .51,
                            minChildSize: .35,
                            maxChildSize: .51,
                          ),
                          child: SvgPicture.asset(ImagesRoute.icTrash),
                        ),
                      },
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
