import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 15,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.yellow,
            tabs: <Widget>[
              Tab(text: '热门',),
              Tab(text: '推荐',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
              Tab(text: '收藏',),
            ],
          ),
          title: Text('APPBAR'),
          // backgroundColor: Color.fromRGBO(233, 233, 233, 0.8),//背景颜色
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: (){

          //   },
          // ),//左侧
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ],
        ),
        body: Text('12321')
      ),
    );
  }
}
