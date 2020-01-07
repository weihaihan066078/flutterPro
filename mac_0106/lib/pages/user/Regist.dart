import 'package:flutter/material.dart';


class RegistPage extends StatelessWidget {
  final Map arguments;
  const RegistPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('registfir'),
      ),
      body: Container(
        color: Colors.blue,
        child: RaisedButton(
          onPressed: (){
            // Navigator.pushNamed(context, '/registsec',arguments:{
            //   'id':'222'
            // });
            Navigator.pushNamed(context, '/registsec');
            // Navigator.of(context).pushReplacementNamed('/registsec');
          },
          child: Text('cilck to next'),
        ),
      ),
    );
  }
}


