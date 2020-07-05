import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyEventDemo());

class MyEventDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyEventHomePage());
  }
}

class MyEventHomePage extends StatefulWidget {
  @override
  _MyEventHomePageState createState() => _MyEventHomePageState();
}

class _MyEventHomePageState extends State<MyEventHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("事件处理"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //捕捉OutlineButton的点击事件
          OutlineButton(
              child: Text('点击-OutlineButton'),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: '你点击了OutlineButton',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                );
              }),
          SizedBox(height: 10), //保留间距10
          //捕捉FlatButton的长按事件
          FlatButton(
              child: Text('长按-FlatButton'),
              color: Colors.blueGrey,
              textColor: Colors.white,
              onLongPress: () {
                Fluttertoast.showToast(
                  msg: '你长按了FlatButton',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                );
              }),
          SizedBox(height: 10), //保留间距10
          // 不自带交互的控件
          GestureDetector(
            child: Container(
              width: 300.0,
              height: 100.0,
              color: Colors.lightGreen,
              child: Text(
                '这是一个Container，请测验它的Tap相关事件处理方法',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "黑体"),
              ),
            ),
            onTapDown: (d) {
              Fluttertoast.showToast(
                msg: 'onTapDown',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onTapUp: (d) {
              Fluttertoast.showToast(
                msg: 'onTapUp',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onTap: () {
              Fluttertoast.showToast(
                msg: 'onTap',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onDoubleTap: () {
              Fluttertoast.showToast(
                msg: 'onDoubleTap',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onTapCancel: () {
              Fluttertoast.showToast(
                msg: 'onTaoCancel',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
          ),
          SizedBox(height: 10), //保留间距10

          GestureDetector(
            child: Container(
              width: 300.0,
              height: 100.0,
              color: Colors.brown,
              child: Text(
                '这是一个Container，请测验它的Vertical竖直拖动相关事件处理方法',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "黑体"),
              ),
            ),
            onVerticalDragDown: (_) {
              Fluttertoast.showToast(
                msg: '竖直方向拖动按下onVerticalDragDown',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onVerticalDragStart: (_) {
              Fluttertoast.showToast(
                msg: '竖直方向拖动开始onVerticalDragStart',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onVerticalDragUpdate: (_) {
              Fluttertoast.showToast(
                msg: '竖直方向拖动更新onVerticalDragUpdate',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onVerticalDragCancel: () {
              Fluttertoast.showToast(
                msg: '竖直方向拖动取消onVerticalDragCancel',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onVerticalDragEnd: (_) {
              Fluttertoast.showToast(
                msg: '竖直方向拖动结束onVerticalDragEnd',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
          ),

          SizedBox(height: 10), //保留间距10

          GestureDetector(
            child: Container(
              width: 300.0,
              height: 100.0,
              color: Colors.red,
              child: Text(
                '这是一个Container，请测验它的Pan触摸点相关事件处理方法',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "黑体"),
              ),
            ),
            onPanDown: (_) {
              Fluttertoast.showToast(
                msg: 'onPanDown',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onPanStart: (_) {
              Fluttertoast.showToast(
                msg: 'onPanStart',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onPanUpdate: (_) {
              Fluttertoast.showToast(
                msg: 'onPanUpdate',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onPanCancel: () {
              Fluttertoast.showToast(
                msg: 'onPanCancel',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
            onPanEnd: (_) {
              Fluttertoast.showToast(
                msg: 'onPanEnd',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
              );
            },
          ),
          SizedBox(height: 10), //保留间距10
          GestureDetector(
              child: Container(
                width: 300.0,
                height: 100.0,
                color: Colors.orange,
                child: Text(
                  '这是一个Container，请测验它的Scale与屏幕交互相关事件处理方法',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: "黑体"),
                ),
              ),
              onScaleStart: (_) {
                Fluttertoast.showToast(
                  msg: 'onScaleStart',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                );
              },
              onScaleUpdate: (_) {
                Fluttertoast.showToast(
                  msg: 'onScaleUpdate',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                );
              },
              onScaleEnd: (_) {
                Fluttertoast.showToast(
                  msg: 'onScaleEnd',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                );
              }),
          SizedBox(height: 10), //保留间距10

          SizedBox(height: 10), //保留间距10

          SizedBox(height: 10), //保留间距10
        ],
      ),
    );
  }
}
