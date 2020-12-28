// import 'dart:ui';
import 'package:flutter/material.dart';

import 'NavBar/NavBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nestbees- Switch to smart Switch',
        theme: ThemeData(

            // primarySwatch: Colors.blue,

            ),
        home: NavBar());
  }
}
