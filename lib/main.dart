import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final themeColor = Colors.white;
  final counterThemeColor = const Color(0xFF1C233F);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NepaBills",
      theme: ThemeData(
        primaryColor: counterThemeColor,
        backgroundColor: themeColor,
      ),
      home: Scaffold(
        backgroundColor: themeColor,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: themeColor,
          items: <Widget>[
            Icon(Icons.add, size: 30, color: themeColor,),
            Icon(Icons.list, size: 30, color: themeColor,),
            Icon(Icons.compare_arrows, size: 30, color: themeColor,),
            Icon(Icons.add, size: 30, color: themeColor,),
          ],
          onTap: (index) {
            //Handle button tap
          },
          color: counterThemeColor,
          height: 60,
        ),
        body: Container(color: themeColor),
      ),
    );
  }
}