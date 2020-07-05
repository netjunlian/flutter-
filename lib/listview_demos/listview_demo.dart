import 'package:flutter/material.dart';

void main() => runApp(MyListViewDemo());

class MyListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyListViewHomePage());
  }
}

class MyListViewHomePage extends StatefulWidget {
  @override
  _MyListViewHomePageState createState() => _MyListViewHomePageState();
}

class _MyListViewHomePageState extends State<MyListViewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView组件的用法"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              const Text('1. 台式机'),
              const Text('2. 笔记本'),
              const Text('3. 手机'),
              const Text('4. Pad'),
              const Text('5. 硬盘'),
              const Text('6. 显示器'),
              const Text('7. 显卡'),
              const Text('8. 内存'),
            ],
          ),
        ],
      ),
    );
  }
}
