import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            title: Text('Flutter Store'),
          ),
          body: ColumnMethod()),
    ),
  ));
}

Column ColumnMethod() {
  return Column(children: [
    Text(
      'First Project',
      style: TextStyle(fontSize: 20),
    ),
    RowWidgets()
  ]);
}

class RowWidgets extends StatelessWidget {
  const RowWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlatButton(
          child: Text('red'),
          color: Colors.red,
          onPressed: () {},
        ),
        FlatButton(
          child: Text('yellow'),
          color: Colors.yellow,
          onPressed: () {},
        ),
        FlatButton(
          child: Text('green'),
          color: Colors.green,
          onPressed: () {},
        )
      ],
    );
  }
}
