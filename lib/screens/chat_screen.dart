import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chat_rounded),
        title: Text("Hey Chat", style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold)),
      ),
    );
  }
}