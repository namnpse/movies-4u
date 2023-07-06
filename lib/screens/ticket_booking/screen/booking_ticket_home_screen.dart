import 'package:flutter/material.dart';
import 'package:movies_4u/constants/image_routes.dart';

import '../components/background_gradient_image.dart';
import '../components/dark_borderless_button.dart';
import '../components/movie_ticket_app_bar.dart';
import '../components/movie_ticket_card.dart';
import '../components/primary_rounded_button.dart';
import '../components/red_rounded_action_button.dart';
import '../constant/constant.dart';
import '../model/movie.dart';
import 'buy_ticket_screen.dart';

class BookingTicketHomeScreen extends StatefulWidget {
  BookingTicketHomeScreen({super.key});

  int index = 1;

  @override
  State<BookingTicketHomeScreen> createState() => _BookingTicketHomeScreenState();
}

class _BookingTicketHomeScreenState extends State<BookingTicketHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final String backgroundImage = movies[widget.index].imageURL;
    final String age = movies[widget.index].age;
    final String rating = movies[widget.index].rating.toString();
    final String categories = movies[widget.index].categories;
    final String technology = movies[widget.index].technology;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundGradientImage(
            image: Image.network(
              backgroundImage,
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
                Image.asset(
                  movies[widget.index].logo,
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DarkBorderlessButton(
                      text: 'Popular with Friends',
                      callback: () {},
                    ),
                    DarkBorderlessButton(text: age, callback: () {}),
                    PrimaryRoundedButton(
                      text: rating,
                      callback: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.vertical,
                    children: [
                      Text(categories, style: kSmallMainTextStyle),
                      const SizedBox(height: 8),
                      Text(technology, style: kSmallMainTextStyle),
                    ],
                  ),
                ),
                Image.asset(ImagesRoute.divider),
                RedRoundedActionButton(text: 'BUY TICKET', callback: () {
                  _navigateToBuyTicketScreen(movies[widget.index].title);
                }),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movies.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return MovieTicketCard(
                          title: movies[index].title,
                          imageLink: movies[index].imageURL,
                          active: index == widget.index,
                          callBack: () {
                            setState(() {
                              widget.index = index;
                            });
                          },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToBuyTicketScreen(String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BuyTicketScreen(movies[widget.index].title)
      ),
    );
  }
}
