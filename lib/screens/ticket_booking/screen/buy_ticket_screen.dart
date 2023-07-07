import 'package:flutter/material.dart';
import '../../../constants/image_routes.dart';
import '../components/calendar_day_w.dart';
import '../components/cinema_seats_view.dart';
import '../components/show_time_w.dart';
import '../constant/constant.dart';

class BuyTicketScreen extends StatelessWidget {
  final String title;

  const BuyTicketScreen(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .12,
                    height: MediaQuery.of(context).size.width * .12,
                    decoration: kRoundedFadedBorder,
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 28.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .75,
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w900, letterSpacing: 1.5, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              width: MediaQuery.of(context).size.width * .9,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      CalendarDay(
                        dayNumber: '7',
                        dayAbbreviation: 'Mon',
                      ),
                      CalendarDay(
                        dayNumber: '8',
                        dayAbbreviation: 'Tue',
                      ),
                      CalendarDay(
                        dayNumber: '9',
                        dayAbbreviation: 'Wed',
                      ),
                      CalendarDay(
                        dayNumber: '10',
                        dayAbbreviation: 'Thu',
                        isActive: true,
                      ),
                      CalendarDay(
                        dayNumber: '11',
                        dayAbbreviation: 'Fri',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ShowTime(
                    time: '19:00',
                    price: 20,
                    isActive: false,
                  ),
                  ShowTime(
                    time: '20:30',
                    price: 20,
                    isActive: true,
                  ),
                  ShowTime(
                    time: '21:30',
                    price: 20,
                    isActive: false,
                  ),
                  ShowTime(
                    time: '22:00',
                    price: 10,
                    isActive: false,
                  ),
                  ShowTime(
                    time: '22:30',
                    price: 10,
                    isActive: false,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.tv,
                    color: kPimaryColor,
                    size: 25.0,
                  ),
                  const SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Star Cineplex Viet Nam', style: kMainTextStyle),
                      const SizedBox(height: 4.0),
                      const Text('Times City , Ha Noi, Viet Nam',
                          style: TextStyle(color: Colors.white30, fontSize: 12.0)),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          const Text('2D',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(width: 10.0),
                          Text('3D', style: kMainTextStyle),
                          const SizedBox(width: 10.0),
                          const Text('4DX',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 20.0),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    size: 30.0,
                    color: Colors.white38,
                  )
                ],
              ),
            ),
            Center(child: Image.asset(ImagesRoute.ticketScreen)),
            const CinemaSeatsView(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    '30\$',
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                  decoration: const BoxDecoration(
                      color: kActionColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0))),
                  child: const InkWell(
                      child: Text('Pay',
                          style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
