import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('HomePage'),
          SizedBox(
            height: 40,
          ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/ProductPage');
            }, 
            icon: Icon(Icons.place),
            color: Colors.black,
          )
                ],
      )
    );
  }
}