import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nepabills/pages/first_page.dart';
import 'package:nepabills/pages/fourth_page.dart';
import 'package:nepabills/pages/second_page.dart';
import 'package:nepabills/pages/third_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final themeColor = Colors.white;
  final counterThemeColor = const Color(0xFF1C233F);
  Widget _showPage = FirstPage();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NepaBills",
      theme: ThemeData(
        primaryColor: counterThemeColor,
        backgroundColor: themeColor,
      ),
      home: defaultPage(),
    );
  }

  Widget defaultPage() {
    return Builder(
      builder: (context) => Scaffold(
            backgroundColor: themeColor,
            bottomNavigationBar: CurvedNavigationBar(
              index: pageIndex,
              backgroundColor: themeColor,
              items: <Widget>[
                Icon(Icons.add, size: 30, color: themeColor,),
                Icon(Icons.list, size: 30, color: themeColor,),
                Icon(Icons.compare_arrows, size: 30, color: themeColor,),
                Icon(Icons.add, size: 30, color: themeColor, ),
              ],
              onTap: (index) {
                setState(() {
                 _showPage = _openPage(index);
                 pageIndex = index;
                });
              },
              color: counterThemeColor,
              height: 60,
            ),
            body: _showPage,
          ),
    );
  }

  _openPage(index) {
    Widget page;
    switch (index) {
      case 0:
        page = FirstPage();
        break;
      case 1:
        page = SecondPage();
        break;
      case 2:
        page = ThirdPage();
        break;
      case 3:
        page = FourthPage();
        break;
      default:
        page = FirstPage();
    }

    return page;
  }
}
