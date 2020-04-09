// 


// IconButton(
//   icon: Icon(Icons.create_new_folder),
//   color: Colors.cyan,
//   alignment: Alignment.topLeft,
// )



import 'package:flutter/material.dart';

class Iconbutton extends StatefulWidget {
  @override
  _IconbuttonState createState() => _IconbuttonState();
}

class _IconbuttonState extends State<Iconbutton> {
 double _volume = 0.0;

// ...

Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('IconButton',style: TextStyle(color: Colors.black),),
          ),
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
            onPressed: () {
              setState(() {
                _volume += 10;
              });
            },
          ),
          Text('Volume : $_volume'),

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
        )
        ],
      ),
    ),
  );
}
}