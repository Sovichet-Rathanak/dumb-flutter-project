import 'package:bmi_calc/childcard.dart';
import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/customcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const BMIcalc());
}

class BMIcalc extends StatelessWidget {
  const BMIcalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      home: const SafeArea(child: Calc()),
    );
  }
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  Color maleCardColor = kDefaultColor;
  Color femaleCardColor = kDefaultColor;

  Gender? selectedGender; //Start out as null
  int height = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          child: CustomCard(
                            cardColor:
                                selectedGender == Gender.male
                                    ? kActiveColor
                                    : kDefaultColor,
                            cardChild: ChildCard(
                              cardIcon: FontAwesomeIcons.mars,
                              cardName: 'MALE',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          child: CustomCard(
                            cardColor:
                                selectedGender == Gender.female
                                    ? kActiveColor
                                    : kDefaultColor,
                            cardChild: ChildCard(
                              cardIcon: FontAwesomeIcons.venus,
                              cardName: 'FEMALE',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomCard(
                    cardColor: kDefaultColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(), style: kLargeText),
                            Text("cm", style: kSmallText),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30.0,
                            ),
                            overlayColor: kActiveColor,
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: kMinHeight,
                            max: kMaxHeight,
                            activeColor: kActiveColor,
                            inactiveColor: const Color.fromARGB(255, 0, 0, 0),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomCard(
                          cardColor: kDefaultColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("WEIGHT", style: kSmallText),
                              Text("190", style: kLargeText),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundedButton(),
                                  SizedBox(width: 20.0),
                                  FloatingActionButton(
                                    onPressed: () {
                                      print("Hello World");
                                    },
                                    backgroundColor: Colors.black,
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: CustomCard(cardColor: kDefaultColor)),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFD61D00),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        print("Hello World");
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      constraints: BoxConstraints(minHeight: 56, minWidth: 56),
      fillColor: Colors.black,
    );
  }
}
