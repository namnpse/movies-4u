import 'package:flutter/material.dart';

import '../constant/constant.dart';

class PrimaryRoundedButton extends StatelessWidget {
  const PrimaryRoundedButton({
    super.key,
    required this.text,
    this.callback,
    this.margin = 10,
  });

  final Function()? callback;
  final int margin;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(color: kPimaryColor, borderRadius: BorderRadius.circular(15.0)),
          child: Row(
            children: [
              Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Text('/10',
                  style: TextStyle(
                    fontSize: 12,
                  ),
              ),
            ],
          ),
      ),
    );
  }
}
