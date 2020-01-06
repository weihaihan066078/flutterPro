import 'package:flutter/material.dart';
import 'res/listData.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ding Wei DEMO'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(dataList[index]['imageUrl'],fit: BoxFit.cover,),
              ),
              ListTile(
                title: Text(dataList[index]['title']),
                subtitle: Text(dataList[index]['author']),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(dataList[index]['imageUrl']),
                ),
              )
            ],
          ),
        );
     },
    );

    // return ListView(
    //   children: dataList.map((value){
    //     return Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: <Widget>[
    //           AspectRatio(
    //             aspectRatio: 16/9,
    //             child: Image.network(value['imageUrl'],fit: BoxFit.cover,),
                
    //           ),
    //           ListTile(
    //             leading: CircleAvatar(
    //               backgroundImage: NetworkImage(value['imageUrl']),
    //             ),
    //             title: Text(value['title']),
    //             subtitle: Text(value['author']),
    //           )
    //         ],
    //       ),
    //     );

        
    //   }).toList(),
    // );
  }
}
