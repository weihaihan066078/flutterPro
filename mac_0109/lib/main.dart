import 'package:flutter/material.dart';
import 'package:mac_0109/pages/Swiper.dart';
import 'pages/System.dart';
import 'pages/Third.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('timeDemo'),
        ),
        body: Contents()
        
      ),
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],

    );
  }
}

class Contents extends StatelessWidget {
  const Contents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('系统组件'),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SystemPage()
                )
              );
            },
          ),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text('第三方组件'),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ThirdPage()
                )
              );
            },
          ),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text('轮播图'),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SwiperPage()
                )
              );
            },
          ),
        ],
      ),
    );
  }
}
