import 'package:flutter/material.dart';

class Matewidggt extends StatefulWidget {
  @override
  _MatewidggtState createState() => _MatewidggtState();
}

class _MatewidggtState extends State<Matewidggt> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext ctxt) {

    return new MaterialApp(
      title: "MySampleApplication",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text("Hello Flutter App",style: TextStyle(color: Colors.black),),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
            
              new Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool newValue){
                    setState(() {
                      checkBoxValue = newValue;
                    });
                  }
              ),

               Center(
        child:       Container(
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

      ),
            ],
          ),
        )
      ),
    );
  }
}