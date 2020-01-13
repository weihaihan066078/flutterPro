import 'package:flutter/material.dart';
import 'Action1.dart';
import 'Action2.dart';
import 'Action3.dart';
import 'Action4.dart';
import 'components/MyDialog.dart';


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
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo'),
        ),
        body: MyHomePage(),
      )
    );
  }
}

class MyHomePage extends StatelessWidget {


  _action1(context) async{
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text('提示信息'),
          content: Text('确定要删除吗'),
          actions: <Widget>[
            
          ],
        );
      }
    );
  }
  _action2() async{
    
  }
  _action3() async{
    
  }
  _action4() async{
    
  }

  const MyHomePage({Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('alert弹窗——alertdialog'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Action1Page()
              )
            );
          },
        ),
        SizedBox(height: 10),
        RaisedButton(
          child: Text('select弹出框——simpledialog'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Action2Page()
              )
            );
          },
        ),
        SizedBox(height: 10),
        RaisedButton(
          child: Text('actionsheet底部弹出框——showmodalbottomsheet'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Action3Page()
              )
            );
          },
        ),
        SizedBox(height: 10),
        RaisedButton(
          child: Text('toast_fluttertoast——第三方库'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Action4Page()
              )
            );
          },
        ),
        SizedBox(height: 10),
        RaisedButton(
          child: Text('自定义dialog'),
          onPressed: (){
            showDialog(
              context: context,
              builder: (context){
                return MyDialog('关于我们', '我是内容');
              }
            );
          },
        ),
      ],
    );
  }
}

