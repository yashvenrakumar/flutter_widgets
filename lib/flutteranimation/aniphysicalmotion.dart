import 'package:flutter/material.dart';

class AniPhysicalModel extends StatefulWidget {
  @override
  _AniPhysicalModelState createState() => _AniPhysicalModelState();
}

class _AniPhysicalModelState extends State<AniPhysicalModel> {
bool _first = true;

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
              'AnimatedPhysicalModel Widget',
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
          margin: EdgeInsets.fromLTRB( 100, 100, 0, 0),
          child:  GestureDetector(
            onTap: (){
                setState(() {
                    _first = !_first;

                });
            },
                      child: AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.fastOutSlowIn,
              elevation: _first ? 0 : 30.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              borderRadius: _first
                ? const BorderRadius.all(Radius.circular(0))
                : const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 180.0,
                width: 180.0,
                color: Colors.blue[50],
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ),
        ),

      Container(
        margin: EdgeInsets.all( 50),
        height: 20,
        child: const Text('touch flutter logo!'),),
      
      
      

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