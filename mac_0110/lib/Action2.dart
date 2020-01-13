import 'package:flutter/material.dart';

class Action2Page extends StatefulWidget {
  Action2Page({Key key}) : super(key: key);

  @override
  _Action2PageState createState() => _Action2PageState();
}

class _Action2PageState extends State<Action2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('action2'),
      ),
      body: Text('1111'),
    );
  }
}