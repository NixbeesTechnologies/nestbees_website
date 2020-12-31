import 'package:flutter/material.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
import 'package:flutterwebapp/Products/Products.dart';
import 'package:flutterwebapp/carousel/ImageSlider.dart';

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
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      _controller.position.moveTo(dragUpdate.globalPosition.dy * 2.5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: NavBar(),
      ),
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              //Assign the controller to my scrollable widget
              controller: _controller,
              child: Column(
                children: [
                  Container(
                    height:
                        MediaQuery.of(context).size.width > 700 ? 550.0 : 265.0,
                    width: MediaQuery.of(context).size.width,
                    child: ImageSlider(),
                  ),
                  Container(
                    height:
                        MediaQuery.of(context).size.width > 700 ? 550.0 : 265.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.lightGreen[50],
                    child: Products(),
                  ),
                  Container(
                    height:
                        MediaQuery.of(context).size.width > 700 ? 550.0 : 265.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.pink[50],
                    child: Text("FAQ"),
                  ),
                  Container(
                    height:
                        MediaQuery.of(context).size.width > 700 ? 550.0 : 265.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.yellow[50],
                    child: Text("About us"),
                  ),
                ],
              ),
            ),
          ),
          FlutterWebScroller(
            //Pass a reference to the ScrollCallBack function into the scrollbar
            scrollCallBack,
            scrollBarBackgroundColor: Colors.grey[50],
            scrollBarWidth: 20.0,
            dragHandleColor: Colors.grey,
            dragHandleBorderRadius: 2.0,
            dragHandleHeight: 40.0,
            dragHandleWidth: 15.0,
          ),
        ],
      ),
    );
  }
}
