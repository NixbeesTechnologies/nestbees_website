import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebapp/Products/products.dart';
import 'package:flutterwebapp/carousel/ImageSlider.dart';
import 'package:flutterwebapp/contact/contact.dart';
import 'package:flutterwebapp/design/colors.dart';
import 'package:flutterwebapp/design/fontsize.dart';
import 'package:flutterwebapp/design/images.dart';
import 'package:flutterwebapp/faq/faq.dart';
import 'package:flutterwebapp/navbar/nav_bar.dart';

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
  int _navBarIndex = 0;
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
            height: 7.0,
          ),
        ),
        backgroundColor: Mycolors.primary,
        //other navitems
        toolbarHeight: 70.0,
        actions: (MediaQuery.of(context).size.width > 700)
            ? [
                NavBarMenuItem(
                  menuTitle: 'Home',
                  isSelected: _navBarIndex == 0,
                  onSelected: () {
                    setState(() {
                      _navBarIndex = 0;
                    });
                  },
                ),
                NavBarMenuItem(
                  menuTitle: 'Products',
                  isSelected: _navBarIndex == 1,
                  onSelected: () {
                    setState(() {
                      _navBarIndex = 1;
                    });
                  },
                ),
                NavBarMenuItem(
                  menuTitle: 'FAQ',
                  isSelected: _navBarIndex == 2,
                  onSelected: () {
                    setState(() {
                      _navBarIndex = 2;
                    });
                  },
                ),
                NavBarMenuItem(
                  menuTitle: 'Contact',
                  isSelected: _navBarIndex == 3,
                  onSelected: () {
                    setState(() {
                      _navBarIndex = 3;
                    });
                  },
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
                  MinimizedNavbar(
                    title: "Home",
                    navicon: Icons.home,
                    navindex: 0,
                  ),
                  MinimizedNavbar(
                    title: "Products",
                    navicon: Icons.add_shopping_cart_outlined,
                    navindex: 1,
                  ),
                  MinimizedNavbar(
                    title: "FAQ",
                    navicon: Icons.question_answer,
                    navindex: 2,
                  ),
                  MinimizedNavbar(
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
