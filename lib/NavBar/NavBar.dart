import 'package:flutter/material.dart';
import 'package:flutterwebapp/carousel/ImageSlider.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _index = 0; // for selecting fro navbar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer
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
                            color: Color(0xff581840),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                color: Color(0xff581840),
                                fontSize: 20.0,
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
                        _index = 0;
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
                            color: Color(0xff581840),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Product",
                              style: TextStyle(
                                color: Color(0xff581840),
                                fontSize: 20.0,
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
                        _index = 1;
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
                            Icons.contact_support,
                            color: Color(0xff581840),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Query",
                              style: TextStyle(
                                color: Color(0xff581840),
                                fontSize: 20.0,
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
                        _index = 2;
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
                            color: Color(0xff581840),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "FAQ",
                              style: TextStyle(
                                color: Color(0xff581840),
                                fontSize: 20.0,
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
                        _index = 3;
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
                            color: Color(0xff581840),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Contact",
                              style: TextStyle(
                                color: Color(0xff581840),
                                fontSize: 20.0,
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
                        _index = 4;
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                ],
              ),
            )
          : null,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
            iconTheme: IconThemeData(
              color: Color(0xff581845),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Nestbees",
                style: TextStyle(
                  fontFamily: "Ubantu",
                  fontWeight: FontWeight.bold,
                  color: Color(0xff581845),
                  fontSize: 35.0,
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
                                color: Color(0xff581840),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                height: 1.5,
                                width: 70.0,
                                color: _index == 0
                                    ? Color(0xff581840)
                                    : Colors.transparent, //onclick highlighting
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          setState(() {
                            _index = 0;
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
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                height: 1.5,
                                width: 80.0,
                                color: _index == 1
                                    ? Color(0xff581840)
                                    : Colors.transparent, //onclick highlighting
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          setState(() {
                            _index = 1;
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
                              "Query",
                              style: TextStyle(
                                color: Color(0xff581840),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                height: 1.5,
                                width: 70.0,
                                color: _index == 2
                                    ? Color(0xff581840)
                                    : Colors.transparent, //onclick highlighting
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          setState(() {
                            _index = 2;
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
                                color: Color(0xff581840),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                height: 1.5,
                                width: 60.0,
                                color: _index == 3
                                    ? Color(0xff581840)
                                    : Colors.transparent, //onclick highlighting
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          setState(() {
                            _index = 3;
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
                                color: Color(0xff581840),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                height: 1.5,
                                width: 70.0,
                                color: _index == 4
                                    ? Color(0xff581840)
                                    : Colors.transparent, //onclick highlighting
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          setState(() {
                            _index = 4;
                          });
                        },
                      ),
                    ),
                  ]
                : []),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ImageSlider(), //image slider
                  Text("how it works"), // 3 row features
                  Text("Products"), // 3  row products
                  Text("Faq"), // 5 qa
                  Text("Contact"), //bottom
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
