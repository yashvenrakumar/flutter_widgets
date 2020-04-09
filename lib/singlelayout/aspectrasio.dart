import 'package:flutter/material.dart';



class Aspectrasioo extends StatefulWidget {
  @override
  _AspectrasiooState createState() => _AspectrasiooState();
}

class _AspectrasiooState extends State<Aspectrasioo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Aspectrasio",style: TextStyle(color: Colors.black),),
         ),
      
      body: Card(
 
  child: Column(
    children: <Widget>[
      Container(

        margin: EdgeInsets.fromLTRB( 0, 80, 0, 0),
        color: Colors.blue[50],
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlutterLogo(),
        ),
      )
    ],
  ),
)

,
      
    );
  }
}
// Container(
//   height: 200,
//   child: new AspectRatio(
//     aspectRatio: 4 / 3,
//     child: new Container(
//       color: Colors.red,
//     ),
//   ),
// )