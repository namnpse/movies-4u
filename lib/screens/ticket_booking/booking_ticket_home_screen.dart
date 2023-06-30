import 'package:flutter/material.dart';

import 'components/background_gradient_image.dart';
import 'components/constant.dart';
import 'components/search_bar.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * .15,
                      height: 60.0,
                      decoration: kRoundedFadedBorder,
                      child: IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {

                          }),
                    ),
                    const SearchBar(hint: 'Search Movies..'),
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