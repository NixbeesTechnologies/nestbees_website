import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebapp/design/colors.dart';
import 'package:flutterwebapp/design/fontsize.dart';

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Mycolors.imgbg),
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
                      Image.asset("image/1.jpeg",
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
                              color: Mycolors.white),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset("image/22.png",
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
                              color: Mycolors.t2),
                        ),
                      )
                    ],
                  ), //5
                  Stack(
                    children: [
                      Image.asset("image/3.jpg",
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
                              color: Mycolors.white),
                        ),
                      )
                    ],
                  ), //7
                  Stack(
                    children: [
                      Image.asset("image/4.jpg",
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
                              color: Mycolors.t2),
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
