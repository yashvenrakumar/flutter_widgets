import 'package:flutter/material.dart';

 
 

class Opacityy extends StatefulWidget {
  @override
  _OpacityyState createState() => _OpacityyState();
}

class _OpacityyState extends State<Opacityy> {
    
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Opacity ",style: TextStyle(color: Colors.black),),
         ),
     
      body: new Stack(
        children: <Widget>[
         Center(
        child: Opacity(
          opacity: 0.5,
          child: Container(
          color: Colors.red,
          width: 200,
          height: 200,
  ),
        ),

        
        
      
          )
        ],
      ),
       
    );
  }
}