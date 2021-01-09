import 'package:flutter/material.dart';
import 'package:flutterwebapp/resources/colors.dart';
import 'package:flutterwebapp/resources/fontsize.dart';

class ContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 35.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Text(
              "Let's Connect",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 700
                    ? MyFont.smallTitle
                    : MyFont.h2,
                color: MyColors.greyDark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Center(
                child: Text(
                  "We'd love to help you to get started with your smart home",
                  style: TextStyle(
                    fontSize: MyFont.h3,
                    color: MyColors.greyText,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Wrap(
            children: [
              contactInfo(
                icon: Icons.email_outlined,
                title: "E-mail",
                info: "hello@nixbees.com",
              ),
              contactInfo(
                icon: Icons.location_on,
                title: "Address",
                info:
                    "Sri ranga krupa\n1st main 5th cross\nadarshanagar\nTumakuru 572103",
              ),
              contactInfo(
                icon: Icons.phone_in_talk_rounded,
                title: "Mobile",
                info: "+91-9591257205",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class contactInfo extends StatefulWidget {
  var icon;
  final String title;
  final String info;
  contactInfo({this.icon, this.title, this.info});
  @override
  _contactInfoState createState() => _contactInfoState();
}

class _contactInfoState extends State<contactInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 2, color: MyColors.primarytitle)),
              child: Icon(
                widget.icon,
                color: MyColors.primarytitle,
                size: MyFont.h2,
              ),
            ),
            Text(widget.title,
                style: TextStyle(
                    color: MyColors.primary,
                    fontSize: MyFont.h2,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Ubuntu")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.info,
                style: TextStyle(
                    color: MyColors.dgrey,
                    fontSize: MyFont.h3,
                    fontFamily: "Sans"),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
