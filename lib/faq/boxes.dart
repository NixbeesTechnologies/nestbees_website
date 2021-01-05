import 'package:flutter/material.dart';
import 'package:flutterwebapp/design/colors.dart';
import 'package:flutterwebapp/design/fontsize.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class boxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01),
      child: Wrap(children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width > 700
                  ? MediaQuery.of(context).size.width * 0.01
                  : 60.0,
              vertical: MediaQuery.of(context).size.width > 700 ? 0.0 : 50.0),
          child: Column(
            children: [
              box_design(title: "Have a Doubt"),
              Container(
                width: 10.0,
                height: 30.0,
                color: Mycolors.primarytitle,
              ),
              Container(
                  margin: EdgeInsets.only(left: 100.0),
                  child: box_design(
                    title: "Reach Out",
                  )),
              Container(
                width: 10.0,
                height: 30.0,
                color: Mycolors.primarytitle,
              ),
              box_design(
                title: "Ask Query",
              ),
              Container(
                width: 10.0,
                height: 30.0,
                color: Mycolors.primarytitle,
              ),
              Container(
                  margin: EdgeInsets.only(left: 100.0),
                  child: box_design(
                    title: "Interact",
                  )),
              Container(
                width: 10.0,
                height: 30.0,
                color: Mycolors.primarytitle,
              ),
              box_design(
                title: "Find Answer",
              ),
              Container(
                width: 10.0,
                height: 30.0,
                color: Mycolors.primarytitle,
              ),
              Container(
                  margin: EdgeInsets.only(left: 100.0),
                  child: box_design(
                    title: "Feedback",
                  )),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width > 700
              ? MediaQuery.of(context).size.width * 0.07
              : 0,
        ),
        Container(
          width: 400.0,
          child: Column(
            children: [
              que_ans(
                que: "How to purchase Products?",
                ans: "Order online through website.",
              ),
              que_ans(
                que: "How to purchase Products?",
                ans: "Order online through website.",
              ),
              que_ans(
                que: "How to purchase Products?",
                ans: "Order online through website.",
              ),
              que_ans(
                que: "How to purchase Products?",
                ans: "Order online through website.",
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width > 700
              ? MediaQuery.of(context).size.width * 0.06
              : 0,
        ),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width > 700
                  ? MediaQuery.of(context).size.width * 0.01
                  : 110.0,
              vertical: MediaQuery.of(context).size.width > 700 ? 100.0 : 50.0),
          child: Column(
            children: [
              Icon(
                Icons.announcement_outlined,
                color: Mycolors.primarytitle,
                size: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                  color: Mycolors.primarytitle,
                  hoverColor: Mycolors.primary,
                  textColor: Mycolors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(color: Mycolors.white, width: 1)),
                  onPressed: _launchURL,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "New Query",
                      style: TextStyle(
                        fontSize: MyFont.h3,
                        fontFamily: "Sans",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width > 700
              ? MediaQuery.of(context).size.width * 0.05
              : 0,
        ),
      ]),
    );
  }
}

// ignore: camel_case_types
class que_ans extends StatefulWidget {
  final String que;
  final String ans;
  que_ans({this.que, this.ans});
  @override
  _que_ansState createState() => _que_ansState();
}

// ignore: camel_case_types
class _que_ansState extends State<que_ans> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Mycolors.white,
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.contact_support,
                        size: 25.0,
                        color: Mycolors.primary,
                      ),
                    ),
                    Text(
                      widget.que,
                      style: TextStyle(
                        fontSize: MyFont.h3,
                        fontFamily: "Sans",
                        color: Mycolors.primary,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.chevron_right_outlined,
                        size: 25.0,
                        color: Mycolors.primary,
                      ),
                    ),
                    Text(
                      widget.ans,
                      style: TextStyle(
                        fontSize: MyFont.h3,
                        fontFamily: "Sans",
                        color: Mycolors.primary,
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

// ignore: camel_case_types
class box_design extends StatefulWidget {
  final String title;
  box_design({this.title});
  @override
  _box_designState createState() => _box_designState();
}

// ignore: camel_case_types
class _box_designState extends State<box_design> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      minWidth: 150.0,
      color: Mycolors.primarytitle,
      textColor: Mycolors.white,
      hoverColor: Mycolors.primary,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
          side: BorderSide(color: Mycolors.white, width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: MyFont.h3,
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://forms.gle/cG8BEaK74LGn8dkM7';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
