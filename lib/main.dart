import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          titleSpacing: 0.0,
          leading: Icon( 
            Icons.savings_outlined,
            color: Colors.black,
            size: 32,
          ),
          title: Text(
            "2 Dices",
            style: TextStyle(
              fontFamily: "DynaPuff",
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.black
            ),
          ),
          backgroundColor: Colors.yellow.shade700,
        ),
        body: SafeArea(
          child: DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;

  void dices(){
    setState(() {  
      leftDice = Random().nextInt(6)+1;
      rightDice = Random().nextInt(6)+1;
    });
  }
 @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                  dices();
              },
              child: Image.asset("images/dices/dice$leftDice.png")
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                  dices();
              },
              child: Image.asset("images/dices/dice$rightDice.png")
            ),
          )
        ],
      ),
    );
  }
}