import 'package:flutter/material.dart';


class RegistSecPage extends StatelessWidget {
  final Map arguments;
  const RegistSecPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('registsec'),
      ),
      body: Container(
        color: Colors.blue,
        child: RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/registthi');
          },
          child: Text('cilck to next'),
        ),
      ),
    );
  }
}


