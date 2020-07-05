import 'package:flutter/material.dart';

void main() => runApp(MyImageDemo());

class MyImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyImageHomePage());
  }
}

class MyImageHomePage extends StatefulWidget {
  @override
  _MyImageHomePageState createState() => _MyImageHomePageState();
}

class _MyImageHomePageState extends State<MyImageHomePage> {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    // accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
    // error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
    // fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";
    return Scaffold(
      appBar: AppBar(
        title: Text("图片及ICON的用法"),
      ),
      body: Column(children: <Widget>[
        Text(
          icons,
          style: TextStyle(
              fontFamily: "MaterialIcons", fontSize: 80.0, color: Colors.blue),
        ),
        Icon(
          Icons.accessible,
          color: Colors.green,
          size: 80,
        ),
        Icon(
          Icons.error,
          color: Colors.green,
          size: 80,
        ),
        Icon(
          Icons.fingerprint,
          color: Colors.green,
          size: 80,
        ),
        Icon(
          Icons.person,
          color: Colors.green,
        ),
        Icon(
          Icons.face,
          size: 80,
          color: Colors.green,
        ),
        SizedBox(height: 10), //保留间距10
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(MyIcons.ok,size: 50),
            SizedBox(width: 20), //保留间距10
            Icon(MyIcons.applause,size: 50),
            SizedBox(width: 20), //保留间距10
            Icon(MyIcons.wechat, color: Colors.green, size: 50),
          ],
        )
      ]),
    );
  }
}

class MyIcons {
  // ok 图标
  static const IconData ok =
      const IconData(0x1f44c, fontFamily: 'myIcon', matchTextDirection: true);

  //鼓掌图标
  static const IconData applause =
      const IconData(0x1f44f, fontFamily: 'myIcon', matchTextDirection: true);

  // 微信图标
  static const IconData wechat =
      const IconData(0xec7d, fontFamily: 'myIcon', matchTextDirection: true);
}
