import 'package:flutter/material.dart';

class ProductInfoPage extends StatelessWidget {
  final Map arguments;

  ProductInfoPage({Key key,this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Info page'),
        ),
        body: Text(this.arguments['id']),
      ),
    );
  }
}