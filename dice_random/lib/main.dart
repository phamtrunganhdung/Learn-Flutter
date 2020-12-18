import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Tap to Shake'),
          backgroundColor: Colors.indigo,
        ),
        body: ShakeDice(),
      ),
    ),
  );
}

class ShakeDice extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<ShakeDice> {
  int DiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          randomNumber();
        },
        child: Center(
          child: Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/dice$DiceNumber.png'),
                    fit: BoxFit.cover)),
          ),
        ));
  }

  void randomNumber() {
    setState(() {
      Random random = new Random();
      DiceNumber = random.nextInt(6) + 1;
    });
  }
}
