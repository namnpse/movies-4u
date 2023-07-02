import 'package:flutter/material.dart';

import 'components/background_gradient_image.dart';
import 'components/dark_borderless_button.dart';
import 'components/movie_ticket_app_bar.dart';
import 'components/movie_ticket_card.dart';
import 'components/primary_rounded_button.dart';
import 'components/red_rounded_action_button.dart';
import 'constant/constant.dart';
import 'model/movie.dart';

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
    final String year = movies[widget.index].date.year.toString();
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
                Image.asset('assets/images/logo.png'),
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
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        year,
                        style: kSmallMainTextStyle,
                      ),
                      const Text('•', style: kPrimaryColorTextStyle),
                      Text(categories, style: kSmallMainTextStyle),
                      const Text('•', style: kPrimaryColorTextStyle),
                      Text(technology, style: kSmallMainTextStyle),
                    ],
                  ),
                ),
                Image.asset('assets/images/divider.png'),
                RedRoundedActionButton(text: 'BUY TICKET', callback: () {}),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      return MovieTicketCard(
                          title: movies[index].title,
                          imageLink: movies[index].imageURL,
                          active: index == widget.index ? true : false,
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
}
