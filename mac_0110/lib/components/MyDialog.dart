import 'package:flutter/material.dart';
import 'dart:async';

class MyDialog extends Dialog {

  String title;
  String contents;
  //dart定时器
  _showTimer(context){
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      Navigator.pop(context);
      t.cancel();
    });
  }

  MyDialog(this.contents,this.title);

  @override
  Widget build(BuildContext context) {

    _showTimer(context);

    // TODO: implement build
    return Material(
        type: MaterialType.transparency,
        child: Center(
            child: Container(
          height: 200,
          width: 300,
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: Text(this.title),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Icon(Icons.close),
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                        ),
                      )
                    ],
                  )),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(this.contents),
              )
            ],
          ),
        )));
  }
}
