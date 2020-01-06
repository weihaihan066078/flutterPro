import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: HomeContents(),
          appBar: AppBar(
            title: Text('Demo'),
          ),
        ));
  }
}

class HomeContents extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network(
            dataList[index]['imageUrl'],
            fit: BoxFit.cover,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: GridView.builder(
        itemBuilder: this._getListData,
        itemCount: dataList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // mainAxisSpacing: 10,
            // crossAxisSpacing: 10,
            childAspectRatio: 1.7),
      ),
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
    );
  }
}
