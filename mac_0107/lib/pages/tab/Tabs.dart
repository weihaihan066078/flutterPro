import 'package:mac_0107/pages/tab/CatogaryPage.dart';
import 'package:mac_0107/pages/tab/HomePage.dart';
import 'package:mac_0107/pages/tab/SettingPage.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  _TabsState(index){
    this._currentIndex = index;
  }

  List _pageList = [
    HomePage(),
    CatogaryPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: this._pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类'),
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('设置'),
            backgroundColor: Colors.red
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Text('hello!'),
              decoration: BoxDecoration(
                color: Colors.yellow
              ),
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/UserPage');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.place),
              ),
              title: Text('定位'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置'),
            ),
          ],
        )
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('hello flutter'),
        ),
      ),
    );
  }
}