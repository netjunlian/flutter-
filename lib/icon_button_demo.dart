import 'package:flutter/material.dart';

void main() => runApp(MyIconButtonDemo());

class MyIconButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyIconButtonHomePage());
  }
}

class MyIconButtonHomePage extends StatefulWidget {
  @override
  _MyIconButtonHomePageState createState() => _MyIconButtonHomePageState();
}

class _MyIconButtonHomePageState extends State<MyIconButtonHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("用户中心"),
        //定义顶部导航栏的左侧按钮
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => print("menu"),
        ),
        //定义顶部导航栏的右侧按钮组
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => print("search"),
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => print("edit"),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    child: Text("登录"),
                    onPressed: () => print("登录"),
                  ),
                  OutlineButton(
                    child: Text("注册"),
                    onPressed: () => print("注册"),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton.icon(
                    icon: Icon(Icons.send),
                    label: Text("发送"),
                    onPressed: () => print("发送"),
                  ),
                  OutlineButton.icon(
                    icon: Icon(Icons.add),
                    label: Text("添加"),
                    onPressed: () => print("添加"),
                  ),
                  FlatButton.icon(
                    icon: Icon(Icons.info),
                    label: Text("详情"),
                    onPressed: () => print("详情"),
                  ),
                  FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    splashColor: Colors.grey,
                    child: Text("Submit"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {},
                  ),
                  //使用自定义的按钮
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  //使用自定义的按钮
                  CustomButton(
                    width: 200,
                    btnTitle: "自定义按钮",
                    onPressed: () => print("自定义按钮"),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

//自定义按钮
class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key key,
      this.btnTitle = "",
      this.onPressed = null,
      this.width = 100,
      this.height = 100})
      : super(key: key);

  final String btnTitle; //按钮标题
  final onPressed; //按钮点击回调
  final double width; //按钮的宽度
  final double height; //按钮的高度

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: RaisedButton(
        child: Text(btnTitle),
        onPressed: onPressed,
      ),
    );
  }
}
