import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  double height = 100;
  double weight = 50;
  double age = 20;
  bool isMale = true;
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
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: SizedBox(
                height: 200,
                child: RaisedButton(
                  onPressed: isMale
                      ? null
                      : () {
                          setState(() {
                            isMale = !isMale;
                          });
                        },
                  child: Text(
                    'Male',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.indigo),
                  ),
                  elevation: 15,
                  color: Colors.white,
                  disabledColor: Colors.red[200],
                ),
              )),
              Expanded(
                  child: SizedBox(
                height: 200,
                child: RaisedButton(
                  onPressed: !isMale
                      ? null
                      : () {
                          setState(() {
                            isMale = !isMale;
                          });
                        },
                  child: Text(
                    'Female',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.indigo),
                  ),
                  elevation: 15,
                  color: Colors.white,
                  disabledColor: Colors.red[200],
                ),
              ))
            ],
          ),
          SizedBox(
            height: 200,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: TextStyle(fontSize: 25, color: Colors.indigo),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('${this.height.round()}',
                          style: TextStyle(fontSize: 20, color: Colors.indigo)),
                      Text('cm',
                          style: TextStyle(fontSize: 20, color: Colors.indigo))
                    ],
                  ),
                  Slider(
                    min: 100,
                    max: 250,
                    value: height,
                    onChanged: (value) {
                      setState(() {
                        this.height = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: TextStyle(fontSize: 25, color: Colors.indigo),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('${this.weight.round()}',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.indigo)),
                            Text(' kg',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.indigo))
                          ],
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      weight += 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      weight -= 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: Colors.indigo,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Age',
                          style: TextStyle(fontSize: 25, color: Colors.indigo),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('${this.age.round()}',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.indigo)),
                            Text(' Years Old',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.indigo))
                          ],
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      age += 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      age -= 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: Colors.indigo,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.red,
                      child: Text(
                        'CALCULATE',
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
