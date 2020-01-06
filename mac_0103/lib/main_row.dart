import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: HomeContents(),
          appBar: AppBar(
            title: Text('Demo'),
          ),
        ));
  }
}

class HomeContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconContainer(
            Icons.home,
            color: Colors.blue,
            size: 44,
          ),
          IconContainer(
            Icons.pages,
            color: Colors.black,
            size: 44,
          ),
          IconContainer(
            Icons.settings,
            color: Colors.red,
            size: 44,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      height: 600,
      color: Colors.blue,
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32;
  Color color = Colors.white;
  IconData icon;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: this.color,
        ),
      ),
    );
  }
}
