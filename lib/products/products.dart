import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebapp/common/image_widget.dart';
import 'package:flutterwebapp/common/sized_widget.dart';
import 'package:flutterwebapp/model/image_model.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';
import 'package:flutterwebapp/resources/images.dart';

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 32),
            child: Center(
                child: Text(
              "Our Products and Services",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 700
                    ? MyFont.smallTitle
                    : MyFont.h2,
                color: MyColors.greyDark,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          SizedWidget.h30,
          Container(
            width: double.infinity,
            child: Wrap(
              runAlignment: WrapAlignment.spaceEvenly,
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 64,
              children: [
                ProductInfo(
                  title: "Nestbees-Beta ",
                  imgadd: MyImage.prod1,
                  infop:
                      "Model Number: Nixbees-Alpha\nOperating Temperature : -20 to 70 C\nMax.Current : 12Amps\n4 wy Switches\nSupported:Android and iOS",
                ),
                ProductInfo(
                  title: "Nestbees-Alpha",
                  imgadd: MyImage.prod2,
                  infop:
                      "Model Number: Nixbees-Alpha\nOperating Temperature : -20 to 70 C\nMax.Current : 12Amps\n4 wy Switches\nSupported:Android and iOS",
                ),
              ],
            ),
          ),
          SizedWidget.h60,
        ],
      ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  final String title;
  final String imgadd;
  final String infop;

  ProductInfo({this.title, this.imgadd, this.infop});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ImageWidget(ImageModel(
                imageLocation: imgadd,
                height: 300,
                width: 300,
                boxFit: BoxFit.cover,
              )),
              SizedWidget.w30,
              Column(
                children: [
                  SizedWidget.w30,
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: MyFont.h1,
                      fontWeight: FontWeight.bold,
                      color: MyColors.greyDark,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      infop,
                      style: TextStyle(
                        fontSize: MyFont.h3,
                        color: MyColors.greyText,
                        height: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedWidget.h30,
          FlatButton(
            minWidth: 150.0,
            color: MyColors.primaryColor,
            textColor: MyColors.white,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Buy now",
                style: TextStyle(
                  fontSize: MyFont.h3,
                  color: MyColors.white,
                ),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
