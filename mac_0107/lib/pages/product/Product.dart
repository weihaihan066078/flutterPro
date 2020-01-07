import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    //生命周期函数
    super.initState();

    _tabController = TabController(vsync: this, length: 2); //实例化
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductPage'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(
              text: '喜欢',
            ),
            Tab(
              text: '推荐',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text('re xiao '),
          ),
          Center(
            child: Text('tui jian '),
          )
        ],
      ),
    );
  }
}
