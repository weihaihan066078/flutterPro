import 'package:mac_0107/pages/product/Product.dart';

import 'package:mac_0107/pages/tab/CatogaryPage.dart';
import 'package:mac_0107/pages/tab/HomePage.dart';
import 'package:mac_0107/pages/tab/SettingPage.dart';
import 'package:mac_0107/pages/tab/Tabs.dart';

import 'package:mac_0107/pages/user/User.dart';
import 'package:flutter/material.dart';


final routes = {
  '/' : (context) => Tabs(),
  '/CatogaryPage' :(context) => CatogaryPage(),
  '/HomePage' :(context) => HomePage(),
  '/SettingPage' :(context) => SettingPage(),
  '/ProductPage' :(context) => ProductPage(),
  '/UserPage' :(context) => UserPage(),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};