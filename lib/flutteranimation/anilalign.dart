import 'package:flutter/material.dart';


class AniAlign extends StatefulWidget {
  @override
  _AniAlignState createState() => _AniAlignState();
}

class _AniAlignState extends State<AniAlign> {

 AlignmentGeometry _alignment = Alignment.topRight;
 

// @override
//  setState(() {
//     _alignment = _alignment == Alignment.topRight ? Alignment.bottomLeft : Alignment.topRight;
//     _alignmen = _alignmen == Alignment.bottomLeft ? Alignment.bottomRight : Alignment.topLeft;
    
//   });


@override
Widget build(BuildContext context) {
  return Scaffold(
    
     appBar: AppBar( 
       leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" AnimatedAlign",style: TextStyle(color: Colors.black),),
         ),
  
      body: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
         GestureDetector(
           onTap: (){
              setState(() {
                 
    _alignment = _alignment == Alignment.topRight ? Alignment.bottomLeft : Alignment.topRight;
  });


           },
                  child: Center(
                    
                    child: Container(
                      margin: EdgeInsets.fromLTRB( 0, 100, 0, 0),
            height: 220.0,
            width: 220.0,
            color: Colors.blue[50],
            child: AnimatedAlign(
              alignment: _alignment,
              curve: Curves.ease,
              duration: Duration(seconds: 2),
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
                  ),
        ),
        Center(child: Text(" Touch flutter logo",style: TextStyle(
          color: Colors.black, fontSize: 20),)),
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
  );
}

}