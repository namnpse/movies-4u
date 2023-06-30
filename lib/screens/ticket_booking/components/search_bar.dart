import 'package:flutter/material.dart';
import 'constant.dart';

class SearchBar extends StatelessWidget {

  final String hint;
  const SearchBar({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: MediaQuery.of(context).size.width * .70,
      height: 60.0,
      decoration: kRoundedFadedBorder,
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
            style: const TextStyle(fontSize: 22, color: Colors.white),
            maxLines: 1,
            decoration: InputDecoration(
                border: InputBorder.none, labelText: hint, labelStyle: const TextStyle(color: Colors.white),
            ),
          )),
          IconButton(
              icon: const Icon(
                Icons.search,
                size: 28.0,
              ),
              onPressed: () {},
          )
        ],
      ),
    );
  }
}
