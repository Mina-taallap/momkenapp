import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momkenapp/Widgets/MainPageWidget.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Stack(
      children: <Widget>[
        SideMenu(context),
        MainScreenDash(context),
      ],
    );
  }

  Widget MainScreenDash(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      right: isCollapsed ? 0 : 0.6 * screenWidth,
      left: isCollapsed ? 0 : -0.2 * screenWidth,
      child: Material(
          child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash/background.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 80),
                  width: 100,
                  height: 100,
                  //padding: EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/splash/app_icon.png"))),
                ),
                InkWell(
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onTap: () {
                    setState(() {
                      isCollapsed = !isCollapsed;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "الموضوعات",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 3),
              margin: EdgeInsets.symmetric(horizontal: 40),
              height: 40,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 0.0, color: Colors.black),
                    top: BorderSide(width: 0.0, color: Colors.black),
                    right: BorderSide(width: 0.0, color: Colors.black),
                    left: BorderSide(width: 0.0, color: Colors.black)),
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 1),
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "...ابحث ",
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                //scrollDirection: Axis.vertical,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: MainPageWidget(title: "ادارة الغضب        "),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: MainPageWidget(title: "مهارات التواصل     "),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: MainPageWidget(title: "أنواع الذكاء       "),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: MainPageWidget(title: "النضج النفسي       "),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: MainPageWidget(title: "الأكتئاب            "),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: MainPageWidget(title: "الصورةالذاتية      "),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: screenWidth - 5,
                //alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.0, color: Colors.black),
                        top: BorderSide(width: 0.0, color: Colors.black),
                        right: BorderSide(width: 0.0, color: Colors.black),
                        left: BorderSide(width: 0.0, color: Colors.black)),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget SideMenu(context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash/background.png"),
              fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            border: Border(
                bottom: BorderSide(width: 0.0, color: Colors.black),
                top: BorderSide(width: 0.0, color: Colors.black),
                right: BorderSide(width: 0.0, color: Colors.black),
                left: BorderSide(width: 0.0, color: Colors.black))),
        width: 300,
        margin: EdgeInsets.fromLTRB(150, 10, 0.0, 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            InkWell(
              child: SideMenuSubContainer(title: "الشاشة الرئيسية"),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              child: SideMenuSubContainer(title: "هاشتاج"),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              splashColor: Colors.blue,
              onTap: () {
                print("setting");
              },
              //autofocus: true,

              child: SideMenuSubContainer(title: "الاعدادات"),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              child: SideMenuSubContainer(title: "المساعده"),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              child: SideMenuSubContainer(title: "تواصل معنا"),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              child: SideMenuSubContainer(title: "وسائل التواصل "),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                //alignment: Alignment.bottomLeft,
//              width: 120,
//              height: 120,
                // margin: EdgeInsets.only(right: 120,top: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/handed.png"))),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget SideMenuSubContainer({title}) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.deepOrange[50].withOpacity(0.7),
          borderRadius: BorderRadius.circular(10),
          border: Border(
            left: BorderSide(width: 1.0, color: Colors.black),
            right: BorderSide(width: 1.0, color: Colors.black),
            top: BorderSide(width: 1.0, color: Colors.black),
            bottom: BorderSide(width: 1.0, color: Colors.black),
          )),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
