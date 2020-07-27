import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MainPageWidget({title}) {
  return Container(
    alignment: Alignment.center,
    width: 250,
    height: 50,
    decoration: BoxDecoration(
        color: Colors.white,
        //Colors.deepOrange[50].withOpacity(0.7),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
        border: Border(
          left: BorderSide(width: 1.0, color: Colors.black),
          right: BorderSide(width: 1.0, color: Colors.black),
          top: BorderSide(width: 1.0, color: Colors.black),
          bottom: BorderSide(width: 1.0, color: Colors.black),
        )),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[

      Image(alignment: Alignment.centerLeft,height: 40,width: 35,image: AssetImage("assets/images/hand.png")),
        SizedBox(width: 30,),
    Text(

      title,
      //textAlign: TextAlign.center,
      style: TextStyle(

          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),textAlign: TextAlign.center,
    )],),
  );
}
