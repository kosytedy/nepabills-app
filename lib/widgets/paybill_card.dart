import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayBillCard extends StatefulWidget {
  @override
  _PayBillCardState createState() => _PayBillCardState();
}

class _PayBillCardState extends State<PayBillCard> {
  Provider selectedProvider;
  List<Provider> providers = <Provider>[
    const Provider('PHED', 'Port Harcourt Electric'),
    const Provider('EEDC', 'Enugu Electric')
  ];

  @override
  void initState() {
    selectedProvider = providers[0];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      //width: double.infinity,
      //height: ScreenUtil.getInstance().setHeight(500),
      decoration: BoxDecoration(
          color: Color(0xFF1C233F),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Pay bill",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil.getInstance().setSp(45),
                  fontFamily: "Poppins-Bold",
                  letterSpacing: .6),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "Provider",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(26),
              ),
            ),
            Container(
              child: DropdownButton<Provider>(
                value: selectedProvider,
                onChanged: (Provider newValue) {
                  setState(() {
                    selectedProvider = newValue;
                  });
                },
                items: providers.map(
                  (Provider provider) {
                    return DropdownMenuItem<Provider>(
                      value: provider,
                      child: Text(
                        provider.name,
                      ),
                    );
                  },
                ).toList(),
                style: TextStyle(color: Colors.white),
              ),
              //color: Colors.white,
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "Meter No",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(26),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "",
                hintStyle: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "Phone No",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(26),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "",
                hintStyle: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),
          ],
        ),
      ),
    );
  }
}

class Provider {
  const Provider(this.key, this.name);

  final String name;
  final String key;
}
