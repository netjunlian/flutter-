import 'package:flutter/material.dart';

void main() => runApp(MyButtonDemo());

class MyButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyButtonHomePage());
  }
}

class MyButtonHomePage extends StatefulWidget {
  @override
  _MyButtonHomePageState createState() => _MyButtonHomePageState();
}

class _MyButtonHomePageState extends State<MyButtonHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Button组件的用法"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  child: Text("普通按钮"),
                  onPressed: () => print("普通按钮"),
                ),
                SizedBox(width: 10), //间隔
                RaisedButton(
                  child: Text("有颜色按钮"),
                  onPressed: () => print("有颜色按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
                SizedBox(width: 10),
                RaisedButton(
                  child: Text("有阴影按钮"),
                  onPressed: () => print("有阴影按钮"),
                  elevation: 30,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    child: Text("自定义按钮的宽高"),
                    onPressed: () => print("自定义按钮的宽高"),
                  ),
                ),
                SizedBox(width: 10),
                RaisedButton.icon(
                  icon: Icon(Icons.search),
                  label: Text("带图标按钮"),
                  onPressed: () => print("图标按钮"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  //自适应布局
                  child: Container(
                    margin: EdgeInsets.all(10), //外边距
                    height: 60,
                    child: RaisedButton(
                      child: Text("自适应按钮 & 设置水波纹颜色"),
                      onPressed: () => print("自适应按钮"),
                      splashColor: Colors.pink,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("圆角按钮"),
                  onPressed: () => print("圆角按钮"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10) //设置圆角
                      ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 100,
                  height: 100,
                  child: RaisedButton(
                    child: Text("圆形按钮"),
                    onPressed: () => print("圆形按钮"),
                    shape: CircleBorder(
                        //设置圆形
                        side: BorderSide(
                      color: Colors.white, //设置圆形的边框色
                    )),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("按钮的禁用状态"),
                  onPressed: null, //通过将onPressed设置为null来实现按钮的禁用状态
                  color: Colors.pink,
                  disabledColor: Colors.grey,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  child: Text("RaisedButton"),
                  onPressed: ()=>print("RaisedButton"),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.blue,
                  child: Text("FlatButton"),
                  onPressed: ()=>print("FlatButton"),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  color: Colors.blue,//给OutlineButton设置背景颜色是没有用的
                  child: Text("OutlineButton"),
                  onPressed: ()=>print("OutlineButton"),
                ),
              ],
            )
          ],
        ));
  }
}
