import 'package:flutter/material.dart';

import '../constant/constant.dart';
import 'search_bar.dart';

class MovieTicketAppBar extends StatelessWidget {
  const MovieTicketAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .15,
          height: 60.0,
          decoration: kRoundedFadedBorder,
          child: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ),
        const SearchBar(hint: 'Search Movies..'),
      ],
    );
  }
}
