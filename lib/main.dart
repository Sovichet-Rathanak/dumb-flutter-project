import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange.shade300,
        appBar: AppBar(
          backgroundColor: Colors.orange.shade900,
          title: Row(
            children: [
              Icon(
                Icons.menu,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(width: 10.0),
              Text(
                "おバカさん", //Silly Guy
                style: TextStyle(
                  letterSpacing: 3.0,
                  color: Colors.white,  
                  fontFamily: "Cherry Bomb One",
                  fontSize: 32
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 150.0,
                backgroundImage: AssetImage("images/orang.jpg"),
              ),
              Text(
                "ミンガス", //"Mingus"
                style: TextStyle(
                  fontFamily: "Cherry Bomb One",
                  fontSize: 24.0
                )
              ),
              SizedBox(
                width: 250.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Text(
                "プロのマンチャー",
                style: TextStyle(
                  fontFamily: "Cherry Bomb One",
                  fontSize: 32.0
                )
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("ニャーニャー"),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: Text("meow123@yahoo.com"),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}