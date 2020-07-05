import 'package:flutter/material.dart';

void main() => runApp(MyListView2Demo());

class MyListView2Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyListView2HomePage());
  }
}

class MyListView2HomePage extends StatefulWidget {
  @override
  _MyListView2HomePageState createState() => _MyListView2HomePageState();
}

class _MyListView2HomePageState extends State<MyListView2HomePage> {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
      // 显示进度条
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str
                .split("")
                //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Text(
                      c,
                      textScaleFactor: 2.0,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
