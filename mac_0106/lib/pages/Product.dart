import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final Map arguments;
  ProductPage({Key key,this.arguments}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState(arguments: this.arguments);
}

class _ProductPageState extends State<ProductPage> {
    Map arguments;
  _ProductPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    // print(this.arguments['id']);R
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['id']),
      ),
      body: RaisedButton(
        child: Text('to details'),
        onPressed: (){
          Navigator.pushNamed(context, '/productinfo',arguments: {
            'id':arguments['id']
          });
        },
      )
    );
  }
}