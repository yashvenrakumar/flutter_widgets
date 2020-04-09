import 'package:flutter/material.dart';
  
class Rotatedbox extends StatefulWidget {
  @override
  _RotatedboxState createState() => _RotatedboxState();
}

class _RotatedboxState extends State<Rotatedbox> {
  double _value;
  int _turns;

  @override
  void initState() {
    _value = 0.0;
    _turns = 0;
    super.initState();
  }

  void onChange(double value) {
    setState(() {
      _value = value;
      _turns = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" RotatedBox",style: TextStyle(color: Colors.black),),
         ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Slider(value: _value, onChanged: onChange, min: 0, max: 4,),
            RotatedBox(quarterTurns: _turns, child: Container(
              height: 200,
              width: 200,
               color: Colors.blue[50],
              child: Center(child: Text(" rotatedbox demo with slider"))),),


              Container(
          width: 220,
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
        ),
      ),
    );
  }
}