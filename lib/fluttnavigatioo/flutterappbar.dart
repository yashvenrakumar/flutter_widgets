import 'package:flutter/material.dart';


class Appbarexa extends StatefulWidget {
  @override
  _AppbarexaState createState() => _AppbarexaState();
}

class _AppbarexaState extends State<Appbarexa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar example"),
        actions: <Widget>[
          Icon(Icons.comment),
          Icon(Icons.settings),
        ],
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 50.0,
        leading: Icon(Icons.menu),
        bottom: PreferredSize(child: Icon(Icons.linear_scale,size: 60.0,), preferredSize: Size.fromHeight(50.0)),
      ),

      body: Center(
        child:       Container(
          width: 220,
          height: 50,
          //margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
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
    );
  }
}