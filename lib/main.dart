import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hi_chat/firebase_options.dart';
import 'package:hi_chat/screens/chat_screen.dart';
import 'package:hi_chat/screens/login_screen.dart';
import 'package:hi_chat/screens/registration_screen.dart';
import 'package:hi_chat/screens/welcome_screen.dart';
import 'package:hi_chat/utilities/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        '/chat': (context) => ChatScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: kThemeData,
      initialRoute: '/',
    );
  }
}
