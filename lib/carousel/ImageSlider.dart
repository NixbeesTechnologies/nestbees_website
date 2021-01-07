import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';
import 'package:flutterwebapp/resources/images.dart';

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MyColors.primarybg),
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width > 700 ? 550.0 : 265.0,
            width: double.infinity,
            child: Carousel(
                borderRadius: true,
                dotSize: 5.0,
                dotSpacing:
                    MediaQuery.of(context).size.width > 700 ? 30.0 : 20.0,
                dotColor: Colors.white70,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.transparent,
                dotVerticalPadding: 5.0,
                images: [
                  Stack(
                    children: [
                      Image.asset(MyImage.img1,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          colorBlendMode: BlendMode.modulate),
                      Padding(
                        padding: MediaQuery.of(context).size.width > 700
                            ? const EdgeInsets.only(top: 300.0, left: 50)
                            : const EdgeInsets.only(top: 150.0, left: 20.0),
                        child: Text(
                          "Switch to \nSmart Switch",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width > 700
                                  ? MyFont.imgtext
                                  : MyFont.h1,
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.bold,
                              color: MyColors.white),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(MyImage.img2,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          colorBlendMode: BlendMode.modulate),
                      Padding(
                        padding: MediaQuery.of(context).size.width > 700
                            ? const EdgeInsets.only(top: 300.0, left: 50)
                            : const EdgeInsets.only(top: 150.0, left: 20.0),
                        child: Text(
                          "Easy to use\nMobile App",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width > 700
                                  ? MyFont.imgtext
                                  : MyFont.h1,
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.bold,
                              color: MyColors.t2),
                        ),
                      )
                    ],
                  ), //5
                  Stack(
                    children: [
                      Image.asset(MyImage.img3,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          colorBlendMode: BlendMode.modulate),
                      Padding(
                        padding: MediaQuery.of(context).size.width > 700
                            ? const EdgeInsets.only(top: 300.0, left: 50)
                            : const EdgeInsets.only(top: 150.0, left: 20.0),
                        child: Text(
                          "Works\nGlobally and Locally",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width > 700
                                  ? MyFont.imgtext
                                  : MyFont.h1,
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.bold,
                              color: MyColors.white),
                        ),
                      )
                    ],
                  ), //7
                  Stack(
                    children: [
                      Image.asset(MyImage.img4,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          colorBlendMode: BlendMode.modulate),
                      Padding(
                        padding: MediaQuery.of(context).size.width > 700
                            ? const EdgeInsets.only(top: 300.0, left: 50)
                            : const EdgeInsets.only(top: 150.0, left: 20.0),
                        child: Text(
                          "Multiple user \nAccess",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width > 700
                                  ? MyFont.imgtext
                                  : MyFont.h1,
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.bold,
                              color: MyColors.t2),
                        ),
                      )
                    ],
                  ), //3
                ]),
          )
        ],
      ),
    );
  }
}
