import 'package:flutter/material.dart';
import 'package:flutterwebapp/faq/boxes.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';

// ignore: camel_case_types
class FaqWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Center(
              child: Text(
            "FAQ! Need Help",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 700
                    ? MyFont.h1
                    : MyFont.h2,
                fontFamily: "Ubuntu",
                color: MyColors.white,
                fontWeight: FontWeight.bold),
          )),
        ),
        Container(
          child: Text(
            "We have got you covered",
            style: TextStyle(
              fontSize: MyFont.h3,
              color: MyColors.dwhite,
              fontFamily: "Ubuntu",
            ),
          ),
        ),
        boxes(),
        SizedBox(
          height: MediaQuery.of(context).size.width > 700 ? 100.0 : 0,
        )
      ],
    );
  }
}
