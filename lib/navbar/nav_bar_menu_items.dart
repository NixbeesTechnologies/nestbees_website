/*
 * @Author GS
 */

import 'package:flutter/material.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';

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
                color: isSelected ? MyColors.greyDark : MyColors.greyText,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                fontSize: MyFont.h4,
              ),
            ),
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
