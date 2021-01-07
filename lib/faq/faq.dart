import 'package:flutter/material.dart';
import 'package:flutterwebapp/design/colors.dart';
import 'package:flutterwebapp/design/fontsize.dart';
import 'package:flutterwebapp/faq/boxes.dart';

// ignore: camel_case_types
class faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
            child: Center(
                child: Text(
              "FAQ! Need Help",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 700
                      ? MyFont.h1
                      : MyFont.h2,
                  fontFamily: "Ubuntu",
                  color: Mycolors.white,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Container(
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width > 700 ? 50 : 0),
            child: Text(
              "We have got you covered",
              style: TextStyle(
                fontSize: MyFont.h3,
                color: Mycolors.dwhite,
                fontFamily: "Ubuntu",
              ),
            ),
          ),
          boxes(),
          SizedBox(
            height: MediaQuery.of(context).size.width > 700 ? 100.0 : 0,
          )
        ],
      ),
    );
  }
}