import 'package:flutter/material.dart';
import 'package:flutterwebapp/design/colors.dart';
import 'package:flutterwebapp/design/fontsize.dart';

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

class NavBarMenuItem extends StatelessWidget {
  final bool isSelected;
  final String menuTitle;
  final Function onSelected;
  NavBarMenuItem({
    this.isSelected,
    this.menuTitle,
    this.onSelected,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: FlatButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              menuTitle,
              style: TextStyle(
                color: isSelected ? Mycolors.primarytitle : Mycolors.dwhite,
                fontSize: MyFont.h3,
                fontFamily: "Nunito",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                height: 1.5,
                width: 70.0,
                color: isSelected
                    ? Mycolors.primarytitle
                    : Colors.transparent, //onclick highlighting
              ),
            )
          ],
        ),
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          onSelected?.call();
        },
      ),
    );
  }
}
