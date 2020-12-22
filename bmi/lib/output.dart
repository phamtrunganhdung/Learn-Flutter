import 'package:bmi/brain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'brain.dart';

class OutPut extends StatelessWidget {
  CalculatorBrain brain;
  OutPut(this.brain);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
          ),
          centerTitle: true,
          elevation: 15,
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                'Your Result',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                '${brain.getResult()}',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 200,
              child: Center(
                  child: Text(
                '${brain.calculateBMI()}',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 180,
                    fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 200,
              child: Center(
                child: Text(
                  '${brain.getInterpretation()}',
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.red,
              child: Text(
                'RECALCULATE',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            )
          ],
        ));
  }
}
