import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class SystemPage extends StatefulWidget {
  SystemPage({Key key}) : super(key: key);

  @override
  _SystemPageState createState() => _SystemPageState();
}

class _SystemPageState extends State<SystemPage> {
  var _dateTime = new DateTime.now();
  var _time = TimeOfDay(hour: 12,minute: 20);

  _showDatePiker() {
    showDatePicker(
            context: context,
            initialDate: _dateTime,
            firstDate: DateTime(1980),
            lastDate: DateTime(2100))
        .then((onValue) {
      print(onValue);
      setState(() {
        this._dateTime = onValue;
      });
    });
  }

  _showTimePiker() async {
    var result = await showTimePicker(
        context: context, initialTime: TimeOfDay(hour: 0, minute: 0));
    setState(() {
      this._time = result;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SystemPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: _showDatePiker,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('${formatDate(this._dateTime, [yyyy,'-',M,'-',d])}'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: _showTimePiker,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${this._time.hour}时${this._time.minute}分'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
