import 'package:flutter/material.dart';

void main() => runApp(MyTextDemo());

class MyTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyTextHomePage());
  }
}

class MyTextHomePage extends StatefulWidget {
  @override
  _MyTextHomePageState createState() => _MyTextHomePageState();
}

class _MyTextHomePageState extends State<MyTextHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text组件的用法"),
      ),
      body: DefaultTextStyle(
        //1.设置文本默认样式
        style: TextStyle(
          color: Colors.purple,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello Flutter",
              textAlign: TextAlign.left,
            ),
            Text(
              "Hello Flutter!  " * 6,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Hello Flutter",
              textScaleFactor: 1.5,
            ),
            Text(
              "Hello Flutter",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 32.0,
                  height: 2.5,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            new Text("北京工业大学耿丹学院",
                style: TextStyle(fontFamily: "暖色君彩云体", fontSize: 36)),
            new Text("北京工业大学耿丹学院",
                style: TextStyle(fontFamily: "暖色君萌妹体", fontSize: 36)),
            new Text("北京工业大学耿丹学院",
                style: TextStyle(fontFamily: "博洋草书", fontSize: 36)),
          ],
        ),
      ),
    );
  }
}

