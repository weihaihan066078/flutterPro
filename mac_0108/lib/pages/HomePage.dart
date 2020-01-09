import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          
        ],
      ));
  }
}