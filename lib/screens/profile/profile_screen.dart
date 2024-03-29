import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/widgets/search_app_bar.dart';
import '../../theme/movie_theme.dart';
import '../../theme/theme_notifier.dart';
import '../premium/premium_screen.dart';
import '../ticket_booking/screen/booking_ticket_home_screen.dart';
import 'widgets/premium_card_w.dart';
import 'widgets/profile_item_w.dart';
import 'widgets/user_avatar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Consumer(
      builder: (context, ThemeNotifier themeNotifier, child) => Scaffold(
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
                  const UserAvatar(),
                  const SizedBox(height: 12),
                  Text(
                    'Namnpse',
                    style: theme.textTheme.headlineSmall!.copyWith(
                      color: MovieDynamicColorBuilder.getGrey900AndWhite(context),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'namnpse@gmail.com',
                    style: theme.textTheme.bodyMedium!.copyWith(
                        color:
                        MovieDynamicColorBuilder.getGrey900AndWhite(context),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 24),
                  InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PremiumScreen(),
                      ),
                    ),
                    child: PremiumCard(
                      themeNotifier: themeNotifier,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          if(index == 3) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookingTicketHomeScreen()
                              ),
                            );
                          }
                        },
                        child: ProfileOptionItem(
                          index: index,
                          themeNotifier: themeNotifier,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
