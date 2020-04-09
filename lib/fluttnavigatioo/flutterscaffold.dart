import 'package:flutter/material.dart';


class Scafflo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
    home: Scaffold(
      appBar: AppBar(
        title: Text('appbar'),
        backgroundColor: Colors.orangeAccent,
      ),
      body:   Center(
        child:       Container(
          width: 220,
          height: 50,
         // margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).pop();
          }),
        ),

      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.orangeAccent,onPressed: null,child: Text('Press'),),
    
  ));
  }
}