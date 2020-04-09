import 'package:flutter/material.dart';

class BasicSizedBox extends StatelessWidget {
  //A box with a specified size
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SizedBox Widget")),
      //the sizedBox widget forces its child to have a specific width and/or height (if that widget permits that)
      //if it doesnt contain a child, it will size itself to the given width and height
      //can also use SizedBox.expand(), which stes with and height to infinity
      //or SizedBox.fromSize() which requires a Size class

      body:Container(
  width: 200.0,
  height: 200.0,
  color: Colors.blue[50],
  child: Align(
    alignment: const Alignment(1.0, 1.0),
    child: SizedBox(
      width: 10.0,
      height: 20.0,
      child: OverflowBox(
        minWidth: 0.0,
        maxWidth: 100.0,
        minHeight: 0.0,
        maxHeight: 50.0,
        child: Container(
          color: Colors.blue,
        ),
      ),
    ),
  ),
)
    );
  }
}