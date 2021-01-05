import 'package:flutter/material.dart';
import 'package:flutterwebapp/design/colors.dart';
import 'package:flutterwebapp/design/fontsize.dart';

class CustomNavbar extends StatefulWidget {
  final String title;
  int navindex;
  var navicon;
  CustomNavbar({this.title, this.navicon, this.navindex});

  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
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
                  color: Mycolors.primary,
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

class NavBar extends StatefulWidget {
  final String title;
  int navindex;
  NavBar({this.title, this.navindex});
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _navbarindex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: FlatButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: _navbarindex == widget.navindex
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
                color: _navbarindex == widget.navindex
                    ? Mycolors.primarytitle
                    : Colors.transparent, //onclick highlighting
              ),
            )
          ],
        ),
        onPressed: () {
          setState(() {
            _navbarindex = widget.navindex;
          });
        },
      ),
    );
  }
}
