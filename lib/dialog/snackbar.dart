 

import 'package:flutter/material.dart';
 

class Snakbar extends StatefulWidget {
  @override
  _SnakbarState createState() => _SnakbarState();
}

class _SnakbarState extends State<Snakbar> {
 final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
 
  void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
        key: _scaffoldKey,
       appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Snackbar",style: TextStyle(color: Colors.black),),
         ),
        body: Center(
            child: Column(children: <Widget>[
          RaisedButton(
            textColor: Colors.white,
            color: Colors.green,
            child: Text('Show SnackBar'),
            onPressed: () {
              _showScaffold("This is a SnackBar.");
            },
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.deepPurpleAccent,
            child: Text('Show SnackBar 1'),
            onPressed: () {
              _showScaffold("This is a SnackBar called from another place.");
            },
          ),

          
                      Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).pop();
          }),
        ),
        ])));
  }
}
 