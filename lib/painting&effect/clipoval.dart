 


import 'package:flutter/material.dart';
  
class Cliovall extends StatefulWidget {
  @override
  _CliovallState createState() => _CliovallState();
}

class _CliovallState extends State<Cliovall> {
void message(){
 
   print('Message Called.');
 
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
           appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Clipoval",style: TextStyle(color: Colors.black),),
         ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
 
            GestureDetector(
            onTap: () {message();},
            child: ClipOval(
              child: Container(
                color: Colors.lightBlue,
                height: 100.0,
                width: 100.0,
                child: Center(
                  child: Text('Round Shape', 
                  style: TextStyle(color: Colors.white, fontSize: 24), 
                    textAlign: TextAlign.center,)),
              ),
            ),
          ),
 
          GestureDetector(
            onTap: () {message();},
            child: ClipOval(
              child: Container(
                color: Colors.lightBlue,
                height: 100.0,
                width: 140.0,
                child: Center(
                  child: Text('Oval Shape', 
                  style: TextStyle(color: Colors.white, fontSize: 24), 
                    textAlign: TextAlign.center,)),
              ),
            ),
          ),
 
        ])
      )
     )
   );
  }
}