import 'package:flutter/material.dart';
const Color kDefaultColor = Color(0xffFEA1A1); 

final kThemeData = ThemeData(
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  appBarTheme: AppBarTheme(
    titleSpacing: 0,
    backgroundColor: Color(0xffFEA1A1),
    shadowColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
  ),
  iconTheme: IconThemeData(color: Colors.white),
);

final kBtnTxtStyle = TextStyle(
  fontFamily: 'Inter',
  fontWeight: FontWeight.bold,
  fontSize: 18,
);

void func(BuildContext context, Widget screen){
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}
