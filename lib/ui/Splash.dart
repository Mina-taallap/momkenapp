import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momkenapp/ui/MainScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash/background.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Container(
              width: 200,
              height: 200,
              //padding: EdgeInsets.only(top: 80),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/splash/app_icon.png"))),
            ),
            SizedBox(
              height: 130,
            ),
            Text(
              'جميع الحقوق محفوظه',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              'لخدمة ممكن لايبارشية السويس',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              '2020',
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => MainPage()))
            });
  }
}
