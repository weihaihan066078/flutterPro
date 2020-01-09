import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
   
   var sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radio'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('男：'),
                Radio(
                  value: 1,
                  onChanged: (v){
                    setState(() {
                      this.sex = v;
                    });
                  },
                  groupValue: this.sex,
                ),
                Text('女：'),
                Radio(
                  value: 2,
                  onChanged: (v){
                    setState(() {
                      this.sex = v;
                    });
                  },
                  groupValue: this.sex,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}