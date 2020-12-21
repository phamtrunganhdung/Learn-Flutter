import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OutPut extends StatelessWidget {
  const OutPut({Key key}) : super(key: key);

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
                    fontSize: 40,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 200,
              child: Text(
                'Result',
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.indigo),
              ),
            ),
            FlatButton(
              onPressed: () {},
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
