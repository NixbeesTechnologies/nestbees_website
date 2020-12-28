import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
      "images/img4.jpg",
      height: 800.0,
    )
        // Image(image: AssetImage("images/img1.jpeg")),
        );
  }
}
