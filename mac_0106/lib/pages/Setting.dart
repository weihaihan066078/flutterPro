import 'package:flutter/material.dart';
import 'package:mac_0106/res/listData.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    dataList[index]['imageUrl'],
                    fit: BoxFit.cover,
                  ),
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
      ),
    );
  }
}
