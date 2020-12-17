import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
            clipper: getCliper(),
          ),
          PositionedWidget()
        ],
      ),
    );
  }
}

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: 400,
      top: MediaQuery.of(context).size.height / 4.7,
      child: Column(
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('images/avatar.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(100))),
          ),
          SizedBox(height: 30.0),
          Text(
            'Phạm Trung Anh Dũng',
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
          SizedBox(height: 60.0),
          Container(
            height: 45.0,
            width: 370.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.greenAccent,
              color: Colors.green,
              elevation: 7.0,
              child: Center(
                child: Text(
                  'Email : dungpham4320@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Container(
            height: 45.0,
            width: 370.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.redAccent,
              color: Colors.red,
              elevation: 7.0,
              child: Center(
                child: Text(
                  'Phone number: 0785485418',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Container(
            height: 45.0,
            width: 370.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.blueAccent,
              color: Colors.blue,
              elevation: 7.0,
              child: Center(
                child: Text(
                  'Github : github.com/phamtrunganhdung',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class getCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 2.2);
    path.lineTo(size.width + 300, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
