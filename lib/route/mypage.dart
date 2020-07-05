import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("route"),
      ),
      body: Column(
        children: <Widget>[
          new Text('你好吗？我在测验打开新页面！'),
          Image.network(
            'http://a3.att.hudong.com/83/27/01300000560404125940276751227.jpg',
            width: 400,
            height: 400,
          ),
          FlatButton(
            child: Text("打开新的页面"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NewRoute();
              }));
            },
          ),
        ],
      ),
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}
