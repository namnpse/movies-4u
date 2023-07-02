import 'package:flutter/material.dart';
import '../constant/constant.dart';

class MovieTicketCard extends StatelessWidget {

  final String imageLink;
  final String title;
  final Function()? callBack;
  final bool active;

  const MovieTicketCard({
    super.key,
    required this.title,
    required this.imageLink,
    required this.active,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: InkWell(
            onTap: callBack,
            child: SizedBox(
              width: active
                  ? MediaQuery.of(context).size.width / 3
                  : MediaQuery.of(context).size.width / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.network(imageLink),
              ),
            ),
          ),
        ),
        Text(active ? title : '', style: kMovieNameStyle)
      ],
    );
  }
}