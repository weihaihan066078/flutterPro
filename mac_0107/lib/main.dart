import 'package:flutter/material.dart';
import 'routes/route.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

