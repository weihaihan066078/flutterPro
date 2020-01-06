import 'dart:ui';
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
      // height: 150.0,
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            height: 200.0,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: IconContainer(
                  Icons.hotel,
                  color: Colors.red,
                  size: 44,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 200,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          child: Image.network(
                              'https://www.itying.com/images/flutter/2.png',
                              fit: BoxFit.cover),
                          height: 95,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.network(
                              'https://www.itying.com/images/flutter/1.png',
                              fit: BoxFit.cover),
                          height: 95,
                        ),
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
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
    return Container(
      height: 200,
      // width: 100,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
