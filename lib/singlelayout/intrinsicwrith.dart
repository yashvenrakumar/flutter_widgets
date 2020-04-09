import 'package:flutter/material.dart';

class BasicIntrinsicWidth extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white,
         title: Text("intrinsicwidth",style: TextStyle(
        color: Colors.black,
      ),)),
      body: Center(
        child: IntrinsicWidth(
          child: Container(
            height: 70.0,
            width: 150.0,
            color: Colors.red,
            child: Container(color: Colors.orange[300], width: 100.0),
          ),
        ),
      ),
    );
  }
}