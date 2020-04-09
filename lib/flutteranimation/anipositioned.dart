import 'package:flutter/material.dart';

 class AniPositioned extends StatefulWidget {
   @override
   _AniPositionedState createState() => _AniPositionedState();
 }
 
 class _AniPositionedState extends State<AniPositioned> {
bool _first = true;
double _left = 20;
double _top = 20;
double _right = 20;
double _bottom = 20;

@override
Widget build(BuildContext context) {
  return  Scaffold(

    appBar: AppBar(
      leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
            elevation: 5,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'AnimatedPositioned Widget',
              style: TextStyle(
                color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                   ),
            ),
            
      ),
      body: Column(
     
      children: <Widget>[
        Container(
          height: 300,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                left: _left,
                top: _top,
                right: _right,
                bottom: _bottom,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: const Text('CLICK ME!'),
          onPressed: () {
            setState(() {
              _left   = _first ?  10 : 20;
              _top    = _first ?  70 : 20;
              _right  = _first ?  10 : 20;
              _bottom = _first ?  70 : 20;

              _first = !_first;
            });
          },
        ),


         Container(
          margin: EdgeInsets.fromLTRB( 40,100, 0, 0),
          width: 210,
          height: 50,
          child: RaisedButton(
          color: Colors.white,
          elevation: 10,
            onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text(" Source code here !",style: TextStyle(fontSize: 20),),
           ),
        )

      ],
    ),
  );
}
 }