import 'package:flutter/material.dart';
import 'package:flutterwebapp/Products/products.dart';
import 'package:flutterwebapp/carousel/ImageSlider.dart';
import 'package:flutterwebapp/contact/contact.dart';
import 'package:flutterwebapp/design/colors.dart';
import 'package:flutterwebapp/design/fontsize.dart';
import 'package:flutterwebapp/design/images.dart';
import 'package:flutterwebapp/faq/faq.dart';
import 'NavBar/nav_bar.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nestbees- Switch to smart Switch',
      home: LandingPage(),
    ));

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LandingPageState();
  }
}

class _LandingPageState extends State<LandingPage> {
  int _navbarindex = 0;
  AppBar buildAppBar() {
    return AppBar(
        iconTheme: IconThemeData(
          color: Mycolors.white,
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "Nestbees",
            style: TextStyle(
              fontFamily: "Ubantu",
              fontWeight: FontWeight.bold,
              color: Mycolors.primarytitle,
              fontSize: MyFont.h2,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset(
            MyImage.logo,
            width: 7.0,
            height: 7.0,
          ),
        ),
        backgroundColor: Mycolors.primary,
        //other navitems
        toolbarHeight: 70.0,
        actions: (MediaQuery.of(context).size.width > 700)
            ? [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            color: _navbarindex == 0
                                ? Mycolors.primarytitle
                                : Mycolors.dwhite,
                            fontSize: MyFont.h3,
                            fontFamily: "Nunito",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 1.5,
                            width: 70.0,
                            color: _navbarindex == 0
                                ? Mycolors.primarytitle
                                : Colors.transparent, //onclick highlighting
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        _navbarindex = 0;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Products",
                          style: TextStyle(
                            color: _navbarindex == 1
                                ? Mycolors.primarytitle
                                : Mycolors.dwhite,
                            fontSize: MyFont.h3,
                            fontFamily: "Nunito",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 1.5,
                            width: 70.0,
                            color: _navbarindex == 1
                                ? Mycolors.primarytitle
                                : Colors.transparent, //onclick highlighting
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        _navbarindex = 1;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FAQ",
                          style: TextStyle(
                            color: _navbarindex == 2
                                ? Mycolors.primarytitle
                                : Mycolors.dwhite,
                            fontSize: MyFont.h3,
                            fontFamily: "Nunito",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 1.5,
                            width: 70.0,
                            color: _navbarindex == 2
                                ? Mycolors.primarytitle
                                : Colors.transparent, //onclick highlighting
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        _navbarindex = 2;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Contact",
                          style: TextStyle(
                            color: _navbarindex == 3
                                ? Mycolors.primarytitle
                                : Mycolors.dwhite,
                            fontSize: MyFont.h3,
                            fontFamily: "Nunito",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 1.5,
                            width: 70.0,
                            color: _navbarindex == 3
                                ? Mycolors.primarytitle
                                : Colors.transparent, //onclick highlighting
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        _navbarindex = 3;
                      });
                    },
                  ),
                ),
              ]
            : []);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: (MediaQuery.of(context).size.width <= 700.0)
          ? Drawer(
              child: ListView(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  CustomNavbar(
                    title: "Home",
                    navicon: Icons.home,
                    navindex: 0,
                  ),
                  CustomNavbar(
                    title: "Products",
                    navicon: Icons.add_shopping_cart_outlined,
                    navindex: 1,
                  ),
                  CustomNavbar(
                    title: "FAQ",
                    navicon: Icons.question_answer,
                    navindex: 2,
                  ),
                  CustomNavbar(
                    title: "Contact Us",
                    navicon: Icons.contacts,
                    navindex: 3,
                  ),
                ],
              ),
            )
          : null,
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width > 700 ? 550.0 : 260.0,
                width: MediaQuery.of(context).size.width,
                child: ImageSlider(),
              ),
              Container(
                child: Products(),
              ),
              Container(
                color: Mycolors.primary,
                child: faq(),
              ),
              Container(
                child: contact(),
              ),
              Container(
                color: Mycolors.primary,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "Copyright ©2021 All rights reserved | This template is made with 🤍 by Nixbees",
                    style: TextStyle(
                        fontSize: MyFont.h4,
                        fontFamily: "Sans",
                        color: Mycolors.white),
                    textAlign: TextAlign.center,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
