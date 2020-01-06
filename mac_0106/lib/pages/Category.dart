import 'package:flutter/material.dart';
import 'FormPage.dart';
import 'package:mac_0106/res/listData.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>FormPage(myList: dataList,)
                )
              );
            },
            child: Text('click to form page'),
            color: Theme.of(context).accentColor,
          ),
      ],
    );
  }
}