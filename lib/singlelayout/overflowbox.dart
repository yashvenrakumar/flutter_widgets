




import 'package:flutter/material.dart';

class BasicOverflowBox extends StatelessWidget {
  //A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

         backgroundColor: Colors.white,
         title: Text(" overflowbox ",style: TextStyle(
        color: Colors.black,
      ),)),
      body: Container(
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

