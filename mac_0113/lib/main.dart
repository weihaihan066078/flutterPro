import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() { 
    super.initState();
    _getData();
    
    // Map userInfo = {
    //   'userName':'Jim',
    //   'age':20
    // };
    // print(json.encode(userInfo));

    // var a = json.encode(userInfo); 
    // print(a is String);
    // String b = '{"userName":"Jim","age":20}';
    // Map u = json.decode(b);
    // print(u['userName']);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Container(

       ),
    );
  }
}

//请求数据
 _getData() async{
  var url = 'http://a.itying.com/api/productlist';
  var result = await http.get(url);
  if (result.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(result.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${result.statusCode}.');
  }
    
  

 }