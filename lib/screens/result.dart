import 'package:bmi_calc/components/customcard.dart';
import 'package:bmi_calc/components/roundedbutton.dart';
import 'package:bmi_calc/constant.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String result;
  final String interpretation;
  final String bmiResult;
  const ResultScreen({super.key, required this.result, required this.interpretation, required this.bmiResult});

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
                        result,
                        style: kSmallText.copyWith(color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Text(
                        bmiResult,
                        style: kLargeText.copyWith(fontSize: 64),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kSmallText,
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: 300,
                      child: RoundedButton(
                        func: () {
                          Navigator.pop(context);
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
