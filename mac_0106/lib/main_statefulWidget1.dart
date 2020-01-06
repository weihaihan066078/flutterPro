import 'package:flutter/material.dart';
import 'res/listData.dart';

void main(List<String> args) => runApp(MyApp());

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

class LayoutDemo extends StatefulWidget {
  LayoutDemo({Key key}) : super(key: key);

  @override
  _LayoutDemoState createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200,),
        Chip(
          label: Text('${this.countNum}'),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('click'),
          onPressed: (){
            setState(() {//只有有状态组件里有这个方法
              this.countNum++;
            });
          },
        ),

      ],
    );
  }
}