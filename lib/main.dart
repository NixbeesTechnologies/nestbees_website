import 'package:flutter/material.dart';
import 'package:flutterwebapp/Products/Products.dart';
import 'package:flutterwebapp/carousel/ImageSlider.dart';
import 'package:flutterwebapp/design/colors.dart';
import 'package:flutterwebapp/design/fontsize.dart';
import 'NavBar/NavBar.dart';

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
          color: Mycolors.nav,
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "Nestbees",
            style: TextStyle(
              fontFamily: "Ubantu",
              fontWeight: FontWeight.bold,
              color: Mycolors.nav,
              fontSize: MyFont.h2,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Image.asset(
            "images/logo.jpeg",
            width: 7.0,
            height: 7.0,
          ),
        ),
        backgroundColor: Colors.white,
        //other navitems
        toolbarHeight: 50.0,
        actions: (MediaQuery.of(context).size.width > 700)
            ? [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Mycolors.navitem,
                            fontSize: MyFont.h3,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 1.5,
                            width: 70.0,
                            color: _navbarindex == 0
                                ? Color(0xff581840)
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
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Products",
                          style: TextStyle(
                            color: Color(0xff581840),
                            fontSize: MyFont.h3,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 1.5,
                            width: 80.0,
                            color: _navbarindex == 1
                                ? Mycolors.navitem
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
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FAQ",
                          style: TextStyle(
                            color: Mycolors.navitem,
                            fontSize: MyFont.h3,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 1.5,
                            width: 60.0,
                            color: _navbarindex == 2
                                ? Mycolors.navitem
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
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FlatButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Contact",
                          style: TextStyle(
                            color: Mycolors.navitem,
                            fontSize: MyFont.h3,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 1.5,
                            width: 70.0,
                            color: _navbarindex == 3
                                ? Mycolors.navitem
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
                  FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                color: Mycolors.navitem,
                                fontSize: MyFont.h3,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        // setting index and closing drawer
                        _navbarindex = 0;
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                  FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_shopping_cart_outlined,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Product",
                              style: TextStyle(
                                color: Mycolors.navitem,
                                fontSize: MyFont.h3,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        // setting index and closing drawer
                        _navbarindex = 1;
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                  FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.question_answer,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "FAQ",
                              style: TextStyle(
                                color: Mycolors.navitem,
                                fontSize: MyFont.h3,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        // setting index and closing drawer
                        _navbarindex = 2;
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                  FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.contacts,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Contact",
                              style: TextStyle(
                                color: Mycolors.navitem,
                                fontSize: MyFont.h3,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        // setting index and closing drawer
                        _navbarindex = 3;
                        Navigator.of(context).pop();
                      });
                    },
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
                height: MediaQuery.of(context).size.width > 700 ? 550.0 : 265.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.pink[50],
                child: Text("FAQ"),
              ),
              Container(
                height: MediaQuery.of(context).size.width > 700 ? 550.0 : 265.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.yellow[50],
                child: Text("About us"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
