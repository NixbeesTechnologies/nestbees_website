import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';
import 'package:flutterwebapp/resources/images.dart';

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 35.0),
            child: Center(
                child: Text(
              "Our Products and Services",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 700
                      ? MyFont.h1
                      : MyFont.h2,
                  fontFamily: "Ubuntu",
                  color: MyColors.primary,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Wrap(
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
                ProductInfo(
                  title: "Nestbees-Beta ",
                  imgadd: MyImage.prod3,
                  infop:
                      "Model Number: Nixbees-Alpha\nOperating Temperature : -20 to 70 C\nMax.Current : 12Amps\n4 wy Switches\nSupported:Android and iOS",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductInfo extends StatefulWidget {
  final String title;
  final String imgadd;
  final String infop;

  ProductInfo({this.title, this.imgadd, this.infop});
  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.white,
        border: Border.all(
            color: MyColors.t2, width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 20.0,
          )
        ],
      ),
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03, vertical: 30.0),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: MyFont.h2,
                  fontFamily: "Ubuntu",
                  fontWeight: FontWeight.bold,
                  color: MyColors.primarytitle),
            ),
            Image(
              width: 200.0,
              height: 150.0,
              image: AssetImage(
                widget.imgadd,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                widget.infop,
                style: TextStyle(
                    fontSize: MyFont.h5,
                    fontFamily: "Sans",
                    color: MyColors.primary),
              ),
            ),
            FlatButton(
              minWidth: 150.0,
              color: MyColors.primarytitle,
              textColor: MyColors.white,
              hoverColor: MyColors.green,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                  side: BorderSide(color: MyColors.primary, width: 2)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Buy now",
                  style: TextStyle(
                      fontSize: MyFont.h3,
                      color: MyColors.white,
                      fontFamily: "Ubuntu"),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
