/*
 * @Author GS
 */

import 'package:flutter/material.dart';
import 'package:flutterwebapp/common/image_widget.dart';
import 'package:flutterwebapp/contact/contact.dart';
import 'package:flutterwebapp/faq/faq.dart';
import 'package:flutterwebapp/model/image_model.dart';
import 'package:flutterwebapp/navbar/nav_bar.dart';
import 'package:flutterwebapp/navbar/nav_bar_menu_items.dart';
import 'package:flutterwebapp/products/products.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';
import 'package:flutterwebapp/resources/images.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _navBarIndex = 0;
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
      // appBar: buildAppBar(),
      backgroundColor: MyColors.neuBackground,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: MyColors.neuBackground,
              expandedHeight: MediaQuery.of(context).size.height,
              elevation: 0,
              floating: false,
              pinned: true,
              centerTitle: false,
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
                  : [],
              title: Text(
                'Nestbees',
                style: TextStyle(
                  fontSize: MyFont.h1,
                  color: MyColors.greyDark,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Stack(
                    children: [
                      ImageWidget(
                        ImageModel(
                          imageLocation: MyImage.smartHome1,
                          boxFit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'More',
                              style: TextStyle(
                                color: MyColors.greyDark,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: MyColors.greyDark,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Container(
                //   height:
                //       MediaQuery.of(context).size.width > 700 ? 550.0 : 260.0,
                //   child: ImageSlider(),
                // ),
                Container(
                  child: ProductsWidget(),
                ),
                Container(
                  color: MyColors.primary,
                  child: FaqWidget(),
                ),
                Container(
                  child: ContactWidget(),
                ),
                Container(
                  color: MyColors.primary,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                        child: Text(
                      "Copyright ©2021 All rights reserved | This template is made with 🤍 by Nixbees",
                      style: TextStyle(
                          fontSize: MyFont.h5,
                          fontFamily: "Sans",
                          color: MyColors.white),
                      textAlign: TextAlign.center,
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
