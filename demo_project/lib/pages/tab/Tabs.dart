import 'package:flutter/material.dart';

import 'package:demo_project/r.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:demo_project/custom/CustomAppbar.dart';

import 'HomePage.dart';
import 'CatorgrayPage.dart';
import 'OrderListPage.dart';
import 'MinePage.dart';

class Tabs extends StatefulWidget {

  final index;
  Tabs({Key key,this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index){
    this._currentIndex = index;
  }

  List _titleList = [
    '首页',
    '分类',
    '进货单',
    '我的'
  ];

  List<Widget> _pageList = [
    HomePage(),
    CatorgrayPage(),
    OrderListPage(),
    MinePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*0.07),
        child: Offstage(
          offstage: _currentIndex == 3?true:false,
          child: _currentIndex == 0?CustomAppbar(
            title: '',
            navigationBarBackgroundColor: Hexcolor('#FF1619'),
            leadingWidget: Image.asset(R.assetsImgHomeLogo,fit: BoxFit.fill,),
            trailingWidget: InkWell(
              child: Image.asset(R.assetsImgHomeScan,fit: BoxFit.fill,),
              onTap: (){

              },
            ),
          ):AppBar(
            title: Text(_titleList[_currentIndex],style: TextStyle(color: Hexcolor('333333')),),
            backgroundColor: Colors.white,
          ),
        ),  
      ),
      body: this._pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Hexcolor('#FE2512'),
        unselectedItemColor: Hexcolor('#808D9C'),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: this._currentIndex == 0?Container(height: 0.001):Text('首页'),
            icon: Padding(
              child: Image.asset(R.assetsImgHomeSelected),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
              child: Image.asset(R.assetsImgHome,height: 40,width: 40,fit: BoxFit.contain,),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('分类'),
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Image.asset(R.assetsImgCategary),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Image.asset(R.assetsImgCategarySelected),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('进货单'),
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Image.asset(R.assetsImgList),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Image.asset(R.assetsImgListSelected),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('我的'),
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Image.asset(R.assetsImgMine),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Image.asset(R.assetsImgMineSelected),
            ),
          ),
        ],
      ),
    );
  }
}