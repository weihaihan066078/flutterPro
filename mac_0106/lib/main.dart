import 'package:flutter/material.dart';
import 'pages/tabs/Tabs.dart';
import 'routes/Routes.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  // const MyApp({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
