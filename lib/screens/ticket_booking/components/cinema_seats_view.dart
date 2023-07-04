import 'package:flutter/material.dart';

import 'cinema_seat_w.dart';

class CinemaSeatsView extends StatelessWidget {
  const CinemaSeatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          // First Seat Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20),
              ),
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CinemaSeat(),
              CinemaSeat(),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20),
              ),
            ],
          ),
          // Second Row 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CinemaSeat(isReserved: true,),
              CinemaSeat(),
              CinemaSeat(),
            ],
          ),
          // Third  Row 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CinemaSeat(),
              CinemaSeat(isReserved: true,),
              CinemaSeat(isReserved: true,),
            ],
          ),
          // 4TH Row 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CinemaSeat(isReserved: true,),
              CinemaSeat(),
              CinemaSeat(),
            ],
          ),
          // 5TH Row 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
            ],
          ),
          // 6TH Row 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
            ],
          ),
          // final Row 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20),
              ),
              CinemaSeat(),
              CinemaSeat(),
              CinemaSeat(),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CinemaSeat(),
              CinemaSeat(),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
