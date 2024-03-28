import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  _MyBangladeshState createState() => _MyBangladeshState();
}

class _MyBangladeshState extends State<MyApp> {
  int currentDice = 0;
  List<String> _diceImages = [
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png',
  ];
  Random random = Random();
  bool isLoading = false;

  void rollingDice() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        currentDice = random.nextInt(_diceImages.length);
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: Image.asset(_diceImages[currentDice]),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (!isLoading) {
                  rollingDice();
                }
              },
              child: isLoading
                  ? CircularProgressIndicator() // Show CircularProgressIndicator when isLoading is true
                  : Text("Rolling"),
            )
          ],
        ),
      ),
    );
  }
}
