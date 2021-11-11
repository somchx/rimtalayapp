import 'package:flutter/material.dart';
import 'package:rimtalayapp/pages/boat.dart';
import 'package:rimtalayapp/pages/How%20to%20go%20pattaya/pattaya.dart';
import 'package:rimtalayapp/pages/weather.dart';


import 'defualt.dart';
import 'information.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _selectedDrawerItemIndex = 0;
  final _pageDataList = [
    {
      'icon': Icons.home,
      'title': 'หน้าหลัก',
      'page': Defualt(),
    },
    {
      'icon': Icons.calculate,
      'title': 'ค่าเรือโดยสาร',
      'page': BMI(),
    },
    {
      'icon': Icons.wb_sunny,
      'title': 'พยากรณ์อากาศ',
      'page': Weather(),
    },
    {
      'icon': Icons.train,
      'title': 'การเดินทางมาพัทยา',
      'page': Pattaya(),
    },
    {
      'icon': Icons.perm_device_information,
      'title': 'เกี่ยวกับรีสอร์ท',
      'page': Information(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ริมทะเลรีสอร์ท เกาะล้าน"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.background,
                  ],
                ),
                //color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('WELCOME TO\nRIMTALAY RESORT KOHLARN',textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),),
                ],
              ),
            ),
            for (var item in _pageDataList)
              ListTile(
                title:  Row(
                  children: [
                    Icon(
                      item['icon'] as IconData,
                    ),
                    SizedBox(width: 8.0),
                    Text(item['title'] as String),
                  ],
                ),
                onTap: () {
                  setState(() {
                    _selectedDrawerItemIndex = _pageDataList.indexWhere((element) {
                      return item == element;
                    });
                  });
                  Navigator.of(context).pop();
                },
              ),
          ],
        ),
      ),
      body: Container(
        child: _pageDataList[_selectedDrawerItemIndex]['page'] as Widget,
      ),
    );
  }
}
