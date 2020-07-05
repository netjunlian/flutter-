import 'package:flutter/material.dart';

void main() => runApp(MyTextFieldDemo());

class MyTextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyTextFieldHomePage());
  }
}

class MyTextFieldHomePage extends StatefulWidget {
  @override
  _MyTextFieldHomePageState createState() => _MyTextFieldHomePageState();
}

class _MyTextFieldHomePageState extends State<MyTextFieldHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField组件的用法"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "请输入搜索的内容",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: "多行文本框",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "密码框",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "用户名",
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              hintText: "请输入用户名",
            ),
          ),
        ],
      ),
    );
  }
}
