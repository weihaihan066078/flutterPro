import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('表单演示'),
            onPressed: (){
              Navigator.pushNamed(context, '/listpage');
            },
          ),
          SizedBox(width: 5,),
          RaisedButton(
            child: Text('checkbox 演示'),
            onPressed: (){
              Navigator.pushNamed(context, '/checkboxpage');
            },
          ),
          SizedBox(width: 5,),
          RaisedButton(
            child: Text('radio演示'),
            onPressed: (){
              Navigator.pushNamed(context, '/radiopage');
            },
          ),
        ],
      )
    );
  }
}