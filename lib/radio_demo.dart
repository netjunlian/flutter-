import 'package:flutter/material.dart';

void main() => runApp(MyRadioDemo());

class MyRadioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyRadioHomePage());
  }
}

class MyRadioHomePage extends StatefulWidget {
  @override
  _MyRadioHomePageState createState() => _MyRadioHomePageState();
}

class _MyRadioHomePageState extends State<MyRadioHomePage> {
  int _sex = 1;

  void _handleRadioValueChanged(int value) {
    setState(() {
      this._sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Radio、RadioList组件的用法"),
        ),
        body: Column(
          children: <Widget>[
            RadioListTile(
              value: 0,
              groupValue: _sex,
              onChanged: _handleRadioValueChanged,
              title: Text('男'),
              subtitle: Text('male'),
              secondary: Icon(Icons.person),
              selected: _sex == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _sex,
              onChanged: _handleRadioValueChanged,
              title: Text('女'),
              subtitle: Text('female'),
              secondary: Icon(Icons.pregnant_woman),
              selected: _sex == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("男："),
                Radio(
                  value: 0,
                  groupValue: _sex,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                Text("女："),
                Radio(
                  value: 1,
                  groupValue: _sex,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("你选择的是${this._sex == 0 ? "男" : "女"}")],
            )
          ],
        ));
  }
}

