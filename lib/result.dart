import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/customcard.dart';
import 'package:bmi_calc/roundedbutton.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text("BMI Calculator"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomCard(
              height: 500,
              cardColor: kDefaultColor,
              cardChild: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Text(
                      "BMI RESULT",
                      style: kSmallText.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        "Normal",
                        style: kSmallText.copyWith(color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Text(
                        "30.55",
                        style: kLargeText.copyWith(fontSize: 64),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "You have a higher than normal body weight. Try to exercise more.",
                        textAlign: TextAlign.center,
                        style: kSmallText,
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: 300,
                      child: RoundedButton(
                        func: () {
                          Navigator.pop(context, MaterialPageRoute(builder: (context) => const ResultScreen()));
                        },
                        dwidget: Text(
                          "Re-Calculate",
                          style: kSmallText.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
