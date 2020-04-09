import 'package:flutter/material.dart';


class AniDefaultTextStyle extends StatefulWidget {
  @override
  _AniDefaultTextStyleState createState() => _AniDefaultTextStyleState();
}

class _AniDefaultTextStyleState extends State<AniDefaultTextStyle> {
 bool _first = true;

double _fontSize = 40;
Color _color = Colors.blue;

@override
Widget build(BuildContext context) {
  return  Scaffold(
        appBar: AppBar(
          leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
        centerTitle: true,
        backgroundColor: Colors.white,

        title: Text(" AnimatedDfaultTextStyle",style: TextStyle(color: Colors.black),),
      ),
      body:  Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Center(
          child: Container(
            margin:EdgeInsets.fromLTRB( 0,50, 0, 0),
            height: 250,
            child:  GestureDetector(
               onTap: (){
                 setState(() {
                    _fontSize = _first ? 190 : 160;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
                 });
              

             },
                        child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 1000),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: Text('Flutter Awesome'),
              ),
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              _fontSize = _first ? 90 : 60;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          },
          child: Text(
            "CLICK ME!",
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB( 0, 100, 0, 0),
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