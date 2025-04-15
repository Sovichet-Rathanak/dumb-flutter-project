import 'package:flutter/material.dart';
import 'package:hi_chat/components/btn.dart';
import 'package:hi_chat/screens/login_screen.dart';
import 'package:hi_chat/screens/registration_screen.dart';
import 'package:hi_chat/utilities/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 400,
              child: Image.asset(
                'assets/images/first.png',
                fit: BoxFit.contain,
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
              screen: RegistrationScreen(),
              height: 50.0,
              width: 250,
              label: "Register",
              bgColor: Colors.white,
              borderColor: Colors.grey,
              borderWidth: 1,
              txtStyle: kBtnTxtStyle.copyWith(color: Colors.black),
            ),
            SizedBox(height: 15),
            Btn(
              screen: LoginScreen(),
              height: 50.0,
              width: 250,
              label: "Login",
              borderWidth: 0,
              txtStyle: kBtnTxtStyle,
            ),
          ],
        ),
      ),
    );
  }
}
