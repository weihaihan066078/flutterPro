import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chexkbox'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: this.flag, 
                onChanged: (v) {
                  setState(() {
                    this.flag = v;
                  });
                },
                activeColor: Colors.red,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(this.flag?'yes':'no')
            ],
          ),
          SizedBox(height: 20,),
          CheckboxListTile(
            value: this.flag,
            onChanged: (v){
              setState(() {
                this.flag = v;
              });
            },
            title: Text('标题'),
            subtitle: Text('小标题'),
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            onChanged: (v){
              setState(() {
                this.flag = v;
              });
            },
            title: Text('标题'),
            subtitle: Text('小标题'),
            secondary: Icon(Icons.help),
          ),
        ],
      )
    );
  }
}