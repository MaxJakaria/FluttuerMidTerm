import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyBangladeshState createState() => _MyBangladeshState();
}

class _MyBangladeshState extends State<MyApp> {
  int _currentDiceIndex = 0;
  List<String> _diceImages = [
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png',
  ];
  Random _random = Random();

  void _rollDice() {
    setState(() {
      _currentDiceIndex = _random.nextInt(_diceImages.length);
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
                height: 20,
                width: 20,
                child: Image.asset(_diceImages[_currentDiceIndex]),
              ),
            ),
            ElevatedButton(onPressed: _rollDice, child: Text("Rolling"))
          ],
        ),
      ),
    );
  }
}
