import 'package:flutter/material.dart';
import 'package:mac_0106/pages/FormPage.dart';
import 'package:mac_0106/pages/SearchPage.dart';
import 'package:mac_0106/pages/tabs/Tabs.dart';
import 'package:mac_0106/pages/productInfoPage.dart';
import 'package:mac_0106/pages/Product.dart';
import 'package:mac_0106/pages/user/Login.dart';
import 'package:mac_0106/pages/user/Regist.dart';
import 'package:mac_0106/pages/user/RegistSec.dart';
import 'package:mac_0106/pages/user/RegistThi.dart';


//配置路由
final routes = {
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/product': (context, {arguments}) => ProductPage(arguments: arguments,),
  '/productinfo': (context, {arguments}) => ProductInfoPage(arguments: arguments,),
  '/login': (context, {arguments}) => LoginPage(arguments: arguments,),
  '/regist': (context) => RegistPage(),
  '/registsec': (context) => RegistSecPage(),
  '/registthi': (context) => RegistThiPage(),
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
