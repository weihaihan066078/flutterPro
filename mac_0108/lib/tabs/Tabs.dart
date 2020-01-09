import 'package:flutter/material.dart';
import 'package:mac_0108/pages/HomePage.dart';
import 'package:mac_0108/pages/MinePage.dart';
import 'package:mac_0108/pages/SettingsPage.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [HomePage(), SettingsPage(), MinePages()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white
        ),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              this._currentIndex = 1;

            });
          },
          child: Icon(Icons.add),
          backgroundColor: this._currentIndex == 1 ? Colors.red : Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              title: Text('我的'),
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
