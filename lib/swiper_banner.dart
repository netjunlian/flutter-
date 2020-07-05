import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MySwiperBannerDemo());
final List<String> images = [
  'images/swiper1.jpg',
  'images/swiper2.jpg',
  'images/swiper3.jpeg',
  'images/swiper4.jpg',
  'images/swiper5.jpg'
];

final List<String> descriptions = [
  '静夜思',
  '床前明月光',
  '疑是地上霜',
  '举头望明月',
  '低头思故乡',
];

class MySwiperBannerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MySwiperBannerHomePage());
  }
}

class MySwiperBannerHomePage extends StatefulWidget {
  @override
  _MySwiperBannerHomePageState createState() => _MySwiperBannerHomePageState();
}

class _MySwiperBannerHomePageState extends State<MySwiperBannerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("轮播图组件"),
        ),
        body: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 10.0),
                height: 180.0,
                child: Swiper(
                  itemBuilder: _swiperBuilder,
                  itemCount: images.length,

                  pagination: new SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                    color: Colors.black38,
                    activeColor: Colors.blueAccent,
                  )),
                  control: null,
                  duration: 350,
//                viewportFraction: 0.9,
                  scrollDirection: Axis.horizontal,
                  autoplay: true,
                  onTap: (int index) {
                    Fluttertoast.showToast(msg: '点击了第$index个');
                  },
                )),

            Center(
                child: SizedBox.fromSize(
              size: Size.fromHeight(180.0),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(msg: descriptions[index]);
                      },
                      child: ClipRRect(
//                      elevation: 5.0,
                        borderRadius: BorderRadius.circular(6.0),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.asset(images[index], fit: BoxFit.cover),
//                      decorationBox,
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: images.length,
                //选中时的指示器
                pagination: new SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.black38,
                      activeColor: Colors.white,
                    ),
                    margin: const EdgeInsets.only(bottom: 22.0)),
                control: null,
                duration: 300,
                scrollDirection: Axis.horizontal,
                viewportFraction: 0.95,
                autoplay: true,
                onTap: (int index) {
                  Fluttertoast.showToast(msg: '点击了第$index个');
                },
              ),
            ))
          ],
        ));
  }
}

Widget _swiperBuilder(BuildContext context, int index) {
  return (Image.asset(
    images[index],
    fit: BoxFit.fill,
  ));
}

void _goOtherApp(int index) async {
  const url = 'https://www.baidu.com'; //这个url就是由scheme和host组成的 ：scheme://host
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
