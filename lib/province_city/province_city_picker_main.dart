import 'package:flutter/material.dart';
import 'city_picker.dart';

void main() => runApp(MyProvinceCityPickerApp());

class MyProvinceCityPickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '省市联动',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  String _province = "";
  String _city = "";
  String _area = "";
  var _p = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请选择您所在的城市：",
                border: OutlineInputBorder(),
              ),
              controller: _p,
            ),
            OutlineButton(
                child: Text('点击选择'),
                onPressed: () {
                  CityPicker.showCityPicker(
                    context,
                    selectProvince: (province) {
                      print(province);
                      this._province = province["name"];
                      _p.text = this._province;
                    },
                    selectCity: (city) {
                      print(city);
                      this._city = city["name"];
                      _p.text += this._city;
                    },
                    selectArea: (area) {
                      print(area);
                      this._area = area["name"];
                      _p.text += this._area;
                    },
                  );
                }),
          ],
        ));
  }
}
