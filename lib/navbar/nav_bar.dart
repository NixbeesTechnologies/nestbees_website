import 'package:flutter/material.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';

class MinimizedNavbar extends StatefulWidget {
  final String title;
  int navindex;
  var navicon;
  MinimizedNavbar({this.title, this.navicon, this.navindex});

  @override
  _MinimizedNavbarState createState() => _MinimizedNavbarState();
}

class _MinimizedNavbarState extends State<MinimizedNavbar> {
  int navbarindex = 0;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Icon(widget.navicon),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                widget.title,
                style: TextStyle(
                  color: MyColors.primary,
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
          navbarindex = widget.navindex;
          Navigator.of(context).pop();
        });
      },
    );
  }
}
