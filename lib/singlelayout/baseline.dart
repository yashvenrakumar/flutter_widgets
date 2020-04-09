 


import 'package:flutter/material.dart';

class BasicBaseline extends StatelessWidget {
  //A widget that positions its child according to the child's baseline.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" BaseLine",style: TextStyle(color: Colors.black),),
         ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 120.0,
          width: 120.0,
          child: Baseline(
            child: Container(
              color: Colors.red,
              height: 60.0,
              width: 60.0,
            ),
            baseline: 30.0,
            baselineType: TextBaseline.alphabetic,
          ),
        ),
      ),
    );
  }
}