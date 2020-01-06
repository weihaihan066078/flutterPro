import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  List myList = List();
  FormPage({this.myList,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('back'),
        onPressed: (){
          Navigator.of(context).pop(
            
          );
        },
      ),
      appBar: AppBar(
        title: Text('form page'),
      ),
      body: ListView.builder(
        itemCount: this.myList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(this.myList[index]['title']),
          );
       },
      ),
    );
  }
}