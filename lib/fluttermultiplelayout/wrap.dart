import 'package:flutter/material.dart';

class Wrapexapmle extends StatefulWidget {
  @override
  _WrapexapmleState createState() => _WrapexapmleState();
}

class _WrapexapmleState extends State<Wrapexapmle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Wrap example",style: TextStyle(color: Colors.black),),
         ),
      body: Column(
        children: <Widget>[
          Container(
        child: Wrap(
spacing: 8.0, // gap between adjacent chips
runSpacing: 4.0, // gap between lines
children: <Widget>[
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
label: Text('Hamilton'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
label: Text('Lafayette'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
label: Text('Mulligan'),
),

Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
label: Text('Lafayette'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
label: Text('Mulligan'),
),

Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
label: Text('Lafayette'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
label: Text('Mulligan'),
),

Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
label: Text('Lafayette'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
label: Text('Mulligan'),
),

Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('JL')),
label: Text('Laurens'),
),
],
),
      ),

      
            Container(
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 100, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).pop();
          }),
        ),

      
        ],
      )
    );
  }
}