import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({Key key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  var _dateTime =  DateTime.now();

  _showDatePicker(){
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text(
          '确定',
          style: TextStyle(
            color: Colors.red
          ),
        ),
        cancel: Text(
          '取消',
          style: TextStyle(
            color: Colors.cyan
          ),
        )
      ),
      minDateTime: DateTime.parse('1980-01-01'),
      maxDateTime: DateTime.parse('2100-12-31'),
      initialDateTime: DateTime.now(),
      dateFormat: 'yyyy-MMMM-dd',
      pickerMode: DateTimePickerMode.date,
      locale: DateTimePickerLocale.zh_cn,
      onCancel: (){

      },
      onChange: (dateTime,List<int> index){

      },
      onConfirm: (dateTime, List<int> index){
        setState(() {
          this._dateTime = dateTime;
        });
      }

    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(this._dateTime);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap:_showDatePicker,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${this._dateTime}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
