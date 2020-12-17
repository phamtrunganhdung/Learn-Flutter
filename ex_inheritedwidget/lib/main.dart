import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // trong constructor của MyHomePage truyền thêm param myChild
      home: MyHomePage(myChild: MyCenterWidget()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.myChild}); // thêm dòng này

  final Widget myChild; // thêm dòng này

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('1. hàm build được gọi do hàm setState được gọi');
    return Scaffold(
      body: MyInheritedWidget(
        myData: counter,
        child: widget
            .myChild, // sửa lại dòng code này, sử dụng `widget.child` thay vì tạo mới `MyCenterWidget()`
        // `widget` chính reference của MyHomePage widget ấy.
        // vì vậy widget.myChild tương đương với subtree của MyHomePage, chính là từ MyCenterWidget đến hết cây
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyCenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('2. log build MyCenterWidget');
    return Center(
      child: MyText(),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = MyInheritedWidget.of(context).myData;
    print('3. log build MyText với counter = $counter');
    return Text('Tui là widget Text. Data của tui hiện tại là: $counter');
  }
}

class MyInheritedWidget extends InheritedWidget {
  MyInheritedWidget({Widget child, this.myData}) : super(child: child);

  final int myData;

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return myData !=
        oldWidget
            .myData; // nếu data thay đổi thì return true để rebuild các widget con phụ thuộc
  }

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }
}
