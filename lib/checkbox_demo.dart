import 'package:flutter/material.dart';

void main() => runApp(MyCheckDemo());

class MyCheckDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyCheckHomePage());
  }
}

class MyCheckHomePage extends StatefulWidget {
  @override
  _MyCheckHomePageState createState() => _MyCheckHomePageState();
}

class _MyCheckHomePageState extends State<MyCheckHomePage> {
  bool isCheck = false;
  List<bool> isChecks = [false, false, false];
  String _favourite = "";

  void getOptions() {
    _favourite = "";
    if (isChecks[0]) _favourite += "足球\t";
    if (isChecks[1]) _favourite += "篮球\t";
    if (isChecks[2]) _favourite += "排球\t";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Checkbox、CheckboxListTile组件的用法"),
        ),
        body: Column(
          children: <Widget>[
            CheckboxListTile(
              value: isChecks[0],
              onChanged: (value) {
                setState(() {
                  isChecks[0] = value;
                  getOptions();
                });
              },
              title: Text('足球'),
              subtitle: Text('Football'),
              secondary: Icon(Icons.bookmark),
              selected: isCheck,
            ),
            CheckboxListTile(
              value: isChecks[1],
              onChanged: (value) {
                setState(() {
                  isChecks[1] = value;
                  getOptions();
                });
              },
              title: Text('篮球'),
              subtitle: Text('Basketball'),
              secondary: Icon(Icons.bookmark),
            ),
            CheckboxListTile(
              value: isChecks[2],
              onChanged: (value) {
                setState(() {
                  isChecks[2] = value;
                  getOptions();
                });
              },
              title: Text('排球'),
              subtitle: Text('Basketball'),
              secondary: Icon(Icons.bookmark),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("足球"),
                Checkbox(
                  value: isChecks[0],
                  onChanged: (value) {
                    setState(() {
                      isChecks[0] = value;
                      getOptions();
                    });
                  },
                  activeColor: Colors.black,
                ),
                Text("篮球"),
                Checkbox(
                  value: isChecks[1],
                  onChanged: (value) {
                    setState(() {
                      isChecks[1] = value;
                      getOptions();
                    });
                  },
                  activeColor: Colors.black,
                ),
                Text("排球"),
                Checkbox(
                  value: isChecks[2],
                  onChanged: (value) {
                    setState(() {
                      isChecks[2] = value;
                      getOptions();
                    });
                  },
                  activeColor: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "你的爱好是：${this._favourite}",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
