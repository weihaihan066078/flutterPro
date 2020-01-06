import 'package:flutter/material.dart';
import 'res/listData.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs()
    );
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ding Wei DEMO'),
        ),
        body: Text('hello flutter'),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          onTap: (int index){
            
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chrome_reader_mode),
              title: Text('分类'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.minimize),
              title: Text('我的'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.minimize),
              title: Text('我的'),
            ),
          ],
        ),
      );
  }
}