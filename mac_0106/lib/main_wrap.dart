import 'package:flutter/material.dart';
import 'res/listData.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ding Wei DEMO'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          MyButton('1'),
          MyButton('1142312312314121'),
          MyButton('1'),
          MyButton('1'),
          MyButton('11231513123123123'),
          MyButton('1'),
          MyButton('1adasxczasdaxczczc'),
          MyButton('1'),
          MyButton('1'),
          MyButton('1'),
          MyButton('12123assdadazcx'),
          MyButton('1'),
          MyButton('1zxcasdawq'),
          MyButton('1qwxzcxzc'),
        ],
        // direction: Axis.horizontal,//主轴的方向，默认水平
        // alignment: WrapAlignment.start,//主轴的对齐方式
        // spacing: 8, //主轴方向上的间距
        // textDirection: TextDirection.ltr,//文本方向
        // verticalDirection: VerticalDirection.down,//children摆放顺序，默认是down
        // runAlignment: WrapAlignment.spaceAround,//润达对齐方式，run可以理解为新的行或者列，如果水平方向布局的话，润可以理解为新的一行
        // runSpacing: 8,//run的间距
      ),
      height: 300,
      width: 200,
      color: Colors.red,
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        this.text,
      ),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
