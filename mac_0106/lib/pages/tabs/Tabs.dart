import 'package:flutter/material.dart';
import 'package:mac_0106/pages/Category.dart';
import 'package:mac_0106/pages/Home.dart';
import 'package:mac_0106/pages/Setting.dart';

class Tabs extends StatefulWidget {
  final index;//可以根据index选定返回的根路由
  Tabs({Key key,this.index=0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;
  _TabsState(index){
    this._currentIndex = index;
  }
  List _pageList = [
    HomePages(),
    SettingPage(),
    CategoryPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ding Wei DEMO'),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: this._currentIndex,
          onTap: (int index){
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chrome_reader_mode),
              title: Text('设置'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.minimize),
              title: Text('分类'),
            ),
          ],
        ),
      );
  }
}