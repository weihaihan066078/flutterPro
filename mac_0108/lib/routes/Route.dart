import 'package:flutter/material.dart';
import 'package:mac_0108/pages/HomePage.dart';
import 'package:mac_0108/pages/MinePage.dart';
import 'package:mac_0108/pages/SettingsPage.dart';
import 'package:mac_0108/pages/test/CheckBoxPage.dart';
import 'package:mac_0108/pages/test/ListPage.dart';
import 'package:mac_0108/pages/test/RadioPage.dart';

import 'package:mac_0108/tabs/Tabs.dart';


final routes = {
  '/' : (context) => Tabs(),
  '/homepage' : (context) => HomePage(),
  '/settingspage' : (context) => SettingsPage(),
  '/minepage' : (context) => MinePages(),
  '/checkboxpage' : (context) => CheckBoxPage(),
  '/listpage' : (context) => ListPage(),
  '/radiopage' : (context) => RadioPage(),

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