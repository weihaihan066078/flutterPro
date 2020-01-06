import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ding Wei DEMO'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // alignment: Alignment.center,//所有文本居中
        alignment: Alignment(0, 1),
        children: <Widget>[
          Container(
            height: 400,
            width: 200,
            color: Colors.red,
          ),
          Text(
            '一个文本1',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            ),
        ],
      ),
    );
  }
}
