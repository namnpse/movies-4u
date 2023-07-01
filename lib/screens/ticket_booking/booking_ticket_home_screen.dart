import 'package:flutter/material.dart';

import 'components/background_gradient_image.dart';
import 'components/dark_borderless_button.dart';
import 'components/movie_ticket_app_bar.dart';
import 'components/primary_rounded_button.dart';

class BookingTicketHomeScreen extends StatefulWidget {
  const BookingTicketHomeScreen({super.key});

  @override
  State<BookingTicketHomeScreen> createState() => _BookingTicketHomeScreenState();
}

class _BookingTicketHomeScreenState extends State<BookingTicketHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundGradientImage(
            image: Image.network(
              'https://mir-s3-cdn-cf.behance.net/project_modules/1400/c58b4681277211.5cfa6e54a6d3d.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(10.0)),
                const MovieTicketAppBar(),
                const Padding(padding: EdgeInsets.symmetric(vertical: 70.0)),
                const Text(
                  'NEW.MOVIE',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset('assets/images/logo.png'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    DarkBorderlessButton(
                      text: 'Popular with Friends',
                      callback: () {},
                    ),
                    DarkBorderlessButton(text: '18+', callback: () {}),
                    PrimaryRoundedButton(
                      text: '8.7',
                      callback: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}