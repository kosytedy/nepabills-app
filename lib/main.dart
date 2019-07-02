import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nepabills/pages/account.dart';
import 'package:nepabills/pages/contact.dart';
import 'package:nepabills/pages/meter_info.dart';
import 'package:nepabills/pages/pay_bill.dart';
import 'package:nepabills/pages/payment_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final themeColor = Colors.white;
  final counterThemeColor = Color(0xFF1C233F);
  Widget _showPage = PayBillPage();
  int pageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NepaBills",
      theme: ThemeData(
        primaryColor: counterThemeColor,
        backgroundColor: themeColor,
      ),
      home: displayPage(),
    );
  }

  Widget displayPage() {
    return Builder(
      builder: (context) => Scaffold(
            body: _showPage,
            backgroundColor: themeColor,
            bottomNavigationBar: CurvedNavigationBar(
              //buttonBackgroundColor: Colors.yellow[800],
              index: pageIndex,
              backgroundColor: Colors.transparent,
              items: <Widget>[
                Icon(FontAwesomeIcons.addressCard, size: 30, color: themeColor,),
                Icon(FontAwesomeIcons.exchangeAlt, size: 30, color: themeColor,),
                Icon(FontAwesomeIcons.handHoldingUsd, size: 30, color: themeColor,),
                Icon(FontAwesomeIcons.userTie, size: 30, color: themeColor, ),
                Icon(FontAwesomeIcons.infoCircle, size: 30, color: themeColor, ),
              ],
              onTap: (index) {
                setState(() {
                 _showPage = _openPage(index);
                 pageIndex = index;
                });
              },
              color: counterThemeColor,
              height: 65,
            ),
          ),
    );
  }

  _openPage(index) {
    Widget page;
    switch (index) {
      case 0:
        page = MeterInfoPage();
        break;
      case 1:
        page = PayemntInfoPage();
        break;
      case 2:
        page = PayBillPage();
        break;
      case 3:
        page = AccountPage();
        break;
      default:
        page = ContactPage();
    }

    return page;
  }
}
