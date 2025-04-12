import 'package:bmi_calc/constant.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData? icon;
  final Widget? dwidget;
  final Function func;
  const RoundedButton({super.key, this.icon, required this.func, this.dwidget});

  @override
  Widget build(BuildContext context) {
    Widget itemToShow;
    if(dwidget != null){
      itemToShow = dwidget!;
    }else if(icon != null){
      itemToShow = Icon(icon, color: Colors.white);
    }else{
      itemToShow = Text("Click Me", style: kSmallText);
    }

    return RawMaterialButton(
      onPressed: () {
        func();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      constraints: BoxConstraints(minHeight: 56, minWidth: 56),
      fillColor: Colors.black,
      splashColor: Color(0xFFD61D00),
      child: itemToShow,
    );
  }
}