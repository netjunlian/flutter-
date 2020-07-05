import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

void main() => runApp(MyPickerDemo());

class MyPickerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyPickerHomePage());
  }
}

class MyPickerHomePage extends StatefulWidget {
  @override
  _MyPickerHomePageState createState() => _MyPickerHomePageState();
}

class _MyPickerHomePageState extends State<MyPickerHomePage> {
  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    ).then((result) {
      setState(() {
        this._nowDate = result;
      });
    });
  }

  _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: _nowTime,
    ).then((result) {
      setState(() {
        this._nowTime = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker、TimePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${formatDate(_nowDate, [yyyy, '年', mm, '月', dd, '日'])}"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: () {
              _showDatePicker();
            },
          ),
          SizedBox(height: 10),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${_nowTime.format(context)}"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: () {
              _showTimePicker();
            },
          ),
        ],
      ),
    );
  }
}
