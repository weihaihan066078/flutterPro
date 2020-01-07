import 'package:flutter/material.dart';
import 'package:mac_0106/pages/tabs/Tabs.dart';


class RegistThiPage extends StatelessWidget {
  final Map arguments;
  const RegistThiPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('registthi'),
      ),
      body: Container(
        color: Colors.blue,
        child: RaisedButton(
          onPressed: (){
            // Navigator.of(context).pop();
            //返回根
            Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(builder: (context) => new Tabs(index: 1)), 
              (route) => route == null
            );
          },
          child: Text('cilck back'),
        ),
      ),
    );
  }
}


