import 'package:flutter/material.dart';

class Action1Page extends StatefulWidget {
  Action1Page({Key key}) : super(key: key);

  @override
  _Action1PageState createState() => _Action1PageState();
}

class _Action1PageState extends State<Action1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('action1'),
      ),
      body: Text('1111'),
    );
  }
}