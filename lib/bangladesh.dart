import 'package:flutter/material.dart';

class MyBangladesh extends StatelessWidget {
  const MyBangladesh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bangladesh'),
      ),
      body: Container(
        child: Image.asset('images/Nature.jpg'),
      ),
    );
  }
}
