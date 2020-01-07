import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final Map arguments;
  LoginPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.arguments['id']),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}