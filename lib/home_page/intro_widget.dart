/*
 * @Author GS
 */
import 'package:flutter/material.dart';
import 'package:flutterwebapp/common/image_widget.dart';
import 'package:flutterwebapp/model/image_model.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';
import 'package:flutterwebapp/resources/images.dart';

class IntroWidget extends StatefulWidget {
  @override
  _IntroWidgetState createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ImageWidget(
                ImageModel(
                  imageLocation: MyImage.smartHome1,
                  boxFit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            child: Text(
              'Smart home',
              style: TextStyle(
                fontSize:
                    MyFont.bigTitle * MediaQuery.of(context).size.width / 1300,
                color: MyColors.greyDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
