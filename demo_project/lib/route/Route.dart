import 'package:flutter/material.dart';

import 'package:demo_project/pages/tab/Tabs.dart';
import 'package:demo_project/pages/tab/HomePage.dart';
import 'package:demo_project/pages/tab/CatorgrayPage.dart';
import 'package:demo_project/pages/tab/OrderListPage.dart';
import 'package:demo_project/pages/tab/MinePage.dart';

final routes = {
  '/': (context) => Tabs(),
  '/HomePage': (context) => HomePage(),
  '/CatorgrayPage': (context) => CatorgrayPage(),
  '/OrderListPage': (context) => OrderListPage(),
  '/MinePage': (context) => MinePage(),
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
