import 'package:flutter/material.dart';

class RotationTransitio extends StatefulWidget {
  @override
  _RotationTransitioState createState() => _RotationTransitioState();
}

class _RotationTransitioState extends State<RotationTransitio>with SingleTickerProviderStateMixin {
final Tween<double> turnsTween = Tween<double>(
  begin: 1,
  end: 3,
);

AnimationController _controller;

bool _first = true;

initState() {
  _controller = AnimationController(
    vsync: this,
     //vsync: null,

    duration: const Duration(seconds: 1),
  );
  super.initState();
}

@override
Widget build(BuildContext context) {
  return  Scaffold(


    appBar: AppBar(
      leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
         backgroundColor: Colors.white,
         centerTitle: true,
        title: Text("RotationTransition",style: TextStyle(
          color: Colors.black,
        ),
        )
        ),
      body: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
         GestureDetector(
           onTap: (){

              if (_first) {
              _controller.forward();
            } else {
              _controller.reverse();
            }
            _first = !_first;
          
           },
                  child: RotationTransition(
            turns: turnsTween.animate(_controller),
            child: Container(
              child: Container(
                width: 200,
                height: 200,
               
                child: FlutterLogo(),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Center(
          child: RaisedButton(
            elevation: 5,
            color: Colors.white,
            
            
            onPressed: () {
              if (_first) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
              _first = !_first;
            },
            child: Text(
              "Click or touch flutter logo",
            ),
          ),
        ),


         Center(
           child: Container(
                margin: EdgeInsets.fromLTRB( 0, 130, 0, 0),
                width: 230,
                height: 50,
                child: RaisedButton(
                  elevation: 10,
                  color: Colors.white,
                  child: Text(
                     'Source Code here ..!',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
              ),
         ),



      ],
    ),
  );
}
}



 
 