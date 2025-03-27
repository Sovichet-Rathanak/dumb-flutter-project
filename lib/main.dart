import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Rizzler());
}

class Rizzler extends StatelessWidget {
  const Rizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 3.00,
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: RizzlerPage(),
          ),
        ),
      ),
    );
  }
}

class RizzlerPage extends StatefulWidget {
  const RizzlerPage({super.key});

  @override
  State<RizzlerPage> createState() => _RizzlerPageState();
}

class _RizzlerPageState extends State<RizzlerPage> {
  int randomizer = 0;
  bool userAnsw = true;

  List<Map<String, dynamic>> questionBank = [
    {"question": "The Khmer Empire was at its peak during the 9th to 15th centuries.", "answer": true},
    {"question": "Angkor Wat was originally built as a Buddhist temple.", "answer": false},
    {"question": "Cambodia was colonized by the British in the 19th century.", "answer": false},
    {"question": "The Khmer Rouge ruled Cambodia from 1975 to 1979.", "answer": true},
    {"question": "Norodom Sihanouk was Cambodia’s first prime minister after independence from France.", "answer": true},
    {"question": "The capital city of Cambodia has always been Phnom Penh.", "answer": false},
    {"question": "The Cambodian genocide resulted in the deaths of around 1.5 to 2 million people.", "answer": true},
    {"question": "The Angkor civilization declined due to a major earthquake.", "answer": false},
    {"question": "Cambodia became a constitutional monarchy again in 1993.", "answer": true},
    {"question": "The Mekong River does not flow through Cambodia.", "answer": false},
  ];

  List<Text> scoreKeeper = [];

  String questionInit(){
    randomizer = Random().nextInt(questionBank.length);
    return questionBank[randomizer]['question']; 
  }

  void answerChecker(answer){
    if(answer == questionBank[randomizer]['answer']){
      scoreKeeper.add(Text("[˙ᵕ˙]",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.green
        ),
    ));
    }else{
      scoreKeeper.add(Text("[˙◠˙]",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.red
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100.0),
            child: SizedBox(
              width: 400.00,
              child: Text(
                questionInit(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  height: 1,
                  fontFamily: "Cagliostro",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 55.00,
              width: 400.00,
              child: TextButton(
                onPressed: (){
                  userAnsw = true;
                  answerChecker(userAnsw);
                  setState(() {
                    questionInit();
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow.shade700,
                  foregroundColor: Colors.black,
                ),
                child: Text(
                  "Rizz",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 55.00,
              width: 400.00,
              child: TextButton(
                onPressed: () {
                  userAnsw = false;
                  answerChecker(userAnsw);
                  setState(() {
                    questionInit();
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow.shade700,
                  foregroundColor: Colors.black,
                ),
                child: Text(
                  "Gyatt",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20.0),
            child: Wrap(
              children: scoreKeeper,
            ),
          )
        ],
      ),
    );
  }
}