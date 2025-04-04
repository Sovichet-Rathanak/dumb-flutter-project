import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color? cardColor;
  final Widget? cardChild;

  // ignore: use_super_parameters
  const CustomCard({Key? key, this.cardColor, this.cardChild})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 250.0,
      decoration: BoxDecoration(
        color: cardColor ?? Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),

      child: cardChild,
    );
  }
}