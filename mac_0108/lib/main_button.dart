import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('图标按钮');
            },
          )
        ],
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('button oage'),
          Row(
            children: <Widget>[
              //button放入container设置宽高
              RaisedButton(
                child: Text('按钮1'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
                onPressed: () {
                  print('按钮1');
                },
              ),
              Container(
                  height: 50,
                  width: 100,
                  child: RaisedButton(
                    child: Text('按钮2'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 10,
                    onPressed: () {
                      print('按钮2');
                    },
                  )),
              RaisedButton.icon(
                icon: Icon(Icons.home),
                onPressed: () {
                  print('按钮图标');
                },
                label: Text('图标按钮'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              //button放入container设置宽高
              Expanded(
                child: Container(
                    height: 40,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      child: Text('自适应'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 10,
                      onPressed: () {
                        print('自适应');
                      },
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('圆角按钮'),
                onPressed: () {
                  print('圆角按钮');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 100,
                child: RaisedButton(
                    child: Text('圆形按钮'),
                    onPressed: () {
                      print('圆形按钮');
                    },
                    shape: CircleBorder(side: BorderSide(color: Colors.red))),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('扁平化按钮'),
                onPressed: () {
                  print('扁平化按钮');
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              OutlineButton(
                child: Text('边框按钮'),
                color: Colors.blue, //边框按钮无效
                textColor: Colors.red,
                onPressed: () {
                  print('边框按钮');
                },
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('登录'),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text('注册'),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MyButton(text: '自定义按钮',pressed: () => print('自定义按钮'),height: 20.0,width: 100.0,),
              ),
              // MyButton(text: '自定义按钮',pressed: () => print('自定义按钮'),height: 20,width: 100,),
            ],
          ),
        ],
      )),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final height;
  final width;
  const MyButton({Key key,this.text='',this.pressed,this.height=30.0,this.width=80.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: FlatButton(
        /**
         * 禁止水波纹效果将下面两个颜色置为透明
         */
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Text(this.text),
        onPressed: this.pressed,
      )
    );
  }
}
