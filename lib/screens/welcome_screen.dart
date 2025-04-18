import 'package:flutter/material.dart';
import 'package:hi_chat/components/btn.dart';
import 'package:hi_chat/screens/login_screen.dart';
import 'package:hi_chat/screens/registration_screen.dart';
import 'package:hi_chat/utilities/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.chat_rounded, color: kDefaultColor, size: 40),
                SizedBox(width: 20),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'Hey Chat',
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: false,
                ),
              ],
            ),
            Hero(
              tag: 'logo',
              child: SizedBox(
                width: 400,
                height: 400,
                child: Image.asset(
                  'assets/images/first.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                'Welcome to our messaging app! Start connecting with friends and family',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            Btn(
              height: 50.0,
              width: 250,
              label: "Register",
              bgColor: Colors.white,
              borderColor: Colors.grey,
              borderWidth: 1,
              txtStyle: kBtnTxtStyle.copyWith(color: Colors.black),
              func: () => func(context, RegistrationScreen()),
            ),
            SizedBox(height: 15),
            Btn(
              height: 50.0,
              width: 250,
              label: "Login",
              borderWidth: 0,
              txtStyle: kBtnTxtStyle,
              func: () => func(context, LoginScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
