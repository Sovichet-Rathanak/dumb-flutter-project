import 'package:bmi_calc/constant.dart';
import 'package:flutter/material.dart';

class ChildCard extends StatelessWidget {
  final IconData cardIcon;
  final String cardName;
  const ChildCard({super.key, required this.cardIcon, required this.cardName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(cardIcon, size: 80.0, color: Colors.white),
        SizedBox(height: 15.0),
        Text(cardName, style: kSmallText),
      ],
    );
  }
}
