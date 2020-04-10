import 'package:flutter/material.dart';

// class BasicOffstage extends StatelessWidget {
//   //A widget that lays the child out as if it was in the tree, but without painting anything, without making the
//   //child available for hit testing, and without taking any room in the parent.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Offstage Widget")),
//       body: Center(
//         child: Offstage(
//           //this container widget is inserted into the widget tree, but not painted to view
//           child: Container(height: 50.0, width: 50.0, 
//           color: Colors.red),
//         ),
//       ),
//     );
//   }
// }









 

class BasicOffstage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Stack stack = new Stack(
      children: <Widget>[
        _getStackPage(false),
        _getStackPage(true), // set offstageFlag to false to show keyboard
      ],
    );

    MaterialApp mainMaterialApp= new MaterialApp(
      home: new Scaffold(
        body: stack,
      ),
    );

    return mainMaterialApp;
  }

  Widget _getStackPage(bool offstageFlag) {
    Offstage offstage = new Offstage(
      offstage: offstageFlag,
      child: new MaterialApp(
        home: new Scaffold(
          body: new Center(
            child: new TextField(),
          ),
        ),
      ),
    );

    return offstage;
  }
}