import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(MySwiperDemo());

class MySwiperDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MySwiperHomePage());
  }
}

class MySwiperHomePage extends StatefulWidget {
  @override
  _MySwiperHomePageState createState() => _MySwiperHomePageState();
}

class _MySwiperHomePageState extends State<MySwiperHomePage> {
  List<Map> imgList = [{"url":"https://imgsa.baidu.com/forum/w%3D580/sign=a048c4865c4e9258a63486e6ac83d1d1/926eba0e7bec54e79fba36fcb3389b504ec26a4b.jpg"
    },
    {"url":"https://imgsa.baidu.com/forum/w%3D580/sign=32b7c8d2b0a1cd1105b672288913c8b0/3ee0c91349540923173f4f9c9858d109b2de494b.jpg"
    },
    {"url":"https://imgsa.baidu.com/forum/w%3D580/sign=3fa47bb4bd4543a9f51bfac42e168a7b/6e9553da81cb39db3a40c216da160924aa1830bb.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("轮播图组件"),
      ),
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            imgList[index]['url'],
            fit: BoxFit.fill,
          );
        },
        itemCount: imgList.length,
        pagination: new SwiperPagination(), //底部分页器
        control: new SwiperControl(), //左右箭头
      ),
    );
  }
}
