import 'package:flutter/material.dart';
 


 class Fittedbox extends StatefulWidget {
   @override
   _FittedboxState createState() => _FittedboxState();
 }
 
 class _FittedboxState extends State<Fittedbox> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" FittedBox ",style: TextStyle(color: Colors.black),),
         ),
      body: ListView(
            children: <Widget>[
              FittedBox(child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB( 0,100, 0,0),
                      alignment: Alignment.center,
                      child: Image.network("https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    ),
                  ),
                  Container(
                    child: Text("This is a sample text to understand FittedBox widget"),
                  )
                ],
              ),)
            ],
        ),
    );
   }
 }