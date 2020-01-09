import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  var _userName = TextEditingController();//初始化时给表单赋值
  var _password;

  @override
  void initState() {
    super.initState();
    _userName.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list'),
      ),
      // body: TextFieldDemo()
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入用户名'
              ),
              controller: _userName,
              onChanged: (value){
                setState(() {
                  this._userName.text = value;
                });
                
              },
            ),
            SizedBox(height: 20,),
            TextField(
              // obscureText: true,
              decoration: InputDecoration(
                hintText: '请输入密码'
              ),
              onChanged: (value){
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text('登录'),
                onPressed: (){
                  print(this._userName.text);
                  print(_password);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(

            ),
            SizedBox(height: 20,),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '请输入内容',
                border: OutlineInputBorder(),
                
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '请输入密码',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '用户名',
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      );
  }
}