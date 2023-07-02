import 'package:flutter/material.dart';

import '../constant/constant.dart';

class ShowTime extends StatelessWidget {
  final bool isActive;

  final int price;

  final String time;

  const ShowTime({
    super.key,
    required this.time,
    required this.price,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      decoration: BoxDecoration(
          border: Border.all(color: isActive ? kPimaryColor : Colors.white12),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          Text(
            time,
            style:
                TextStyle(color: isActive ? kPimaryColor : Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text('From \$$price', style: const TextStyle(color: Colors.white, fontSize: 18.0))
        ],
      ),
    );
  }
}
