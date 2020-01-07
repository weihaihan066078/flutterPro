import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  HomePages({Key key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search',arguments: {
                'id':123
              });
            },
            child: Text('click to search'),
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/product',arguments: {
                'id':'123'
              });
            },
            child: Text('click to list and send msg'),
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login',arguments: {
                'id':'123'
              });
            },
            child: Text('click to login'),
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/regist');
            },
            child: Text('click to regist'),
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
