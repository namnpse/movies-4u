import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/image_routes.dart';
import '../../constants/movie_static_data.dart';
import '../../theme/movie_gradients.dart';
import '../../theme/movie_theme.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                Text(
                  'Subscribe to Premium',
                  style: theme.textTheme.displaySmall!
                      .copyWith(color: theme.primaryColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Enjoy watching Full-HD movies, without \nrestrictions and without ads',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                      color: MovieDynamicColorBuilder.getGrey800AndWhite(context),
                      fontWeight: FontWeight.w500,
                      height: 1.3),
                ),
                SizedBox(
                  height: 24.h,
                ),
                const PremiumItemCard(
                  subscriptionPrice: '9.99',
                  subscriptionTime: 'month',
                ),
                SizedBox(
                  height: 24.h,
                ),
                const PremiumItemCard(
                  subscriptionPrice: '99.99',
                  subscriptionTime: 'year',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PremiumItemCard extends StatelessWidget {
  final String subscriptionPrice;
  final String subscriptionTime;

  const PremiumItemCard(
      {Key? key,
        required this.subscriptionPrice,
        required this.subscriptionTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: MovieGradients.redGradient,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Container(
        width: double.infinity,
        padding:  EdgeInsets.all(24.h),
        decoration: BoxDecoration(
          color: MovieDynamicColorBuilder.getDark2AndGrey50(context),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: [
            SvgPicture.asset(ImagesRoute.icPremium),
            SizedBox(
              height: 16.h,
            ),
            RichText(
              text: TextSpan(
                text: '\$$subscriptionPrice',
                style: theme.textTheme.displaySmall!.copyWith(
                  color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
                ),
                children: [
                  const WidgetSpan(
                    child: SizedBox(
                      width: 8,
                    ),
                  ),
                  TextSpan(
                    text: '/$subscriptionTime',
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: MovieDynamicColorBuilder.getGrey700AndGrey300(context),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Divider(
              color: MovieDynamicColorBuilder.getDark3AndGrey200(context),
              thickness: 1,
              height: 1,
            ),
            SizedBox(
              height: 16.h,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: MovieStaticData.subscriptionCardFeaturesTitle.length,
              itemBuilder: (context, index) => Row(
                children: [
                  SvgPicture.asset(ImagesRoute.icDone),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    MovieStaticData.subscriptionCardFeaturesTitle[index],
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: MovieDynamicColorBuilder.getGrey800AndGrey300(context),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
