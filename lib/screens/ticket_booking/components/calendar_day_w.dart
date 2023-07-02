import 'package:flutter/material.dart';

import '../constant/constant.dart';

class CalendarDay extends StatelessWidget {
  final String dayAbbreviation;
  final String dayNumber;
  final bool isActive;

  const CalendarDay({
    super.key,
    required this.dayNumber,
    required this.dayAbbreviation,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: 50.0,
        height: 80.0,
        decoration: BoxDecoration(color: isActive ? kPimaryColor : null, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(dayNumber,
                style: TextStyle(
                    color: isActive ? kBackgroundColor : Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold)),
            Text(
              dayAbbreviation.toUpperCase(),
              style: TextStyle(
                color: isActive ? kBackgroundColor : Colors.white12,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
