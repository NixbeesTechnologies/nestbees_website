import 'package:flutter/material.dart';
import 'package:flutterwebapp/common/sized_widget.dart';
import 'package:flutterwebapp/faq/boxes.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';

// ignore: camel_case_types
class FaqWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 64),
      child: Column(
        children: [
          Container(
            child: Center(
                child: Text(
              "FAQ! Need Help",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 700
                      ? MyFont.smallTitle
                      : MyFont.h2,
                  color: MyColors.greyDark,
                  fontWeight: FontWeight.bold),
            )),
          ),
          SizedWidget.h12,
          Container(
            child: Text(
              "We have got you covered",
              style: TextStyle(
                fontSize: MyFont.h3,
                color: MyColors.greyText,
              ),
            ),
          ),
          SizedWidget.h40,
          boxes(),
          SizedBox(
            height: MediaQuery.of(context).size.width > 700 ? 100.0 : 0,
          )
        ],
      ),
    );
  }
}
