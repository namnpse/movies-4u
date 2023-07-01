import 'package:flutter/material.dart';

import '../constant/constant.dart';

class DarkBorderlessButton extends StatelessWidget {
  const DarkBorderlessButton({
    super.key,
    required this.text,
    this.callback,
  });

  final String text;
  final Function()? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(15.0)),
        child: Text(text, style: kMainTextStyle),
      ),
    );
  }
}
