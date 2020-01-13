import 'package:demo_project/r.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            height: 58,
            color: Hexcolor('#FF1619'),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(17.5, 0, 0, 0),
                  child: Image.asset(R.assetsImgHomeLogo),
                )
              ],
            ),
          ),
        ],
      );
  }
}
