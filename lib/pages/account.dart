import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nepabills/widgets/login_card.dart';
import 'package:nepabills/widgets/social_icons.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2.0, color: Colors.black),
        ),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image.asset("assets/images/image_01.png"),
            ),
            Expanded(
              child: Container(),
            ),
            Image.asset("assets/images/image_02.png")
          ],
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/logo-icon.png",
                      width: ScreenUtil.getInstance().setWidth(110),
                      height: ScreenUtil.getInstance().setHeight(110),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(180),
                ),
                FormCard(),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 12.0,
                        ),
                        GestureDetector(
                          onTap: _radio,
                          child: radioButton(_isSelected),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                              fontSize: 12, fontFamily: "Poppins-Medium"),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Container(
                        width: ScreenUtil.getInstance().setWidth(330),
                        height: ScreenUtil.getInstance().setHeight(100),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFF1C233F),
                              Color(0xFF1C233F),
                            ]),
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF1C233F).withOpacity(.3),
                                  offset: Offset(0.0, 8.0),
                                  blurRadius: 8.0)
                            ]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins-Bold",
                                  fontSize: 18,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    horizontalLine(),
                    Text(
                      "Social Login",
                      style: TextStyle(
                          fontSize: 16.0, fontFamily: "Poppins-Medium"),
                    ),
                    horizontalLine()
                  ],
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialIcon(
                      colors: [
                        Color(0xFF102397),
                        Color(0xFF187adf),
                        Color(0xFF00eaf8),
                      ],
                      iconData: FontAwesomeIcons.facebookF,
                      onPressed: () {},
                    ),
                    SocialIcon(
                      colors: [
                        Color(0xFFff4f38),
                        Color(0xFFff355d),
                      ],
                      iconData: FontAwesomeIcons.googlePlus,
                      onPressed: () {},
                    ),
                    SocialIcon(
                      colors: [
                        Color(0xFF17ead9),
                        Color(0xFF6078ea),
                      ],
                      iconData: FontAwesomeIcons.twitter,
                      onPressed: () {},
                    ),
                    SocialIcon(
                      colors: [
                        Color(0xFF00c6fb),
                        Color(0xFF005bea),
                      ],
                      iconData: FontAwesomeIcons.linkedinIn,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "New User? ",
                      style: TextStyle(fontFamily: "Poppins-Medium"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            color: Color(0xFF5d74e3),
                            fontFamily: "Poppins-Bold"),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 36),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
