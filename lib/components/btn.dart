import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final Widget screen;
  final double height;
  final double width;
  final String label;
  final Color? bgColor;
  final Color? borderColor;
  final double? borderWidth;
  final TextStyle? txtStyle;
  const Btn({
    super.key,
    required this.screen,
    required this.height,
    required this.width,
    required this.label,
    this.borderColor,
    this.borderWidth,
    this.bgColor, this.txtStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          ),
      constraints: BoxConstraints(minHeight: height, minWidth: width),
      fillColor: bgColor ?? const Color(0xFFFF8686),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: borderColor ?? Colors.black,
          width: borderWidth ?? 2,
        ),
      ),
      child: Text(
        label,
        style: txtStyle
      ),
    );
  }
}
