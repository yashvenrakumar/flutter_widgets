import 'package:flutter/material.dart';


class StackExample extends StatefulWidget {
  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Row example",style: TextStyle(color: Colors.black),),
         ),
      body:  Column(
              children: <Widget>[
                Stack(
          
          children: <Widget>[
            Container(
              width: 400,
              height: 400,
              color: Colors.blue[400],
              margin: EdgeInsets.all( 12),
            ),

            Container(
              width: 350,
              height: 350,
              color: Colors.blue[350],
              margin: EdgeInsets.all( 12),
            ),


            Container(
              width: 300,
              height: 300,
              color: Colors.blue[300],
              margin: EdgeInsets.all( 12),
            ),


            Container(
              width: 250,
              height: 250,
              color: Colors.blue[250],
              margin: EdgeInsets.all( 12),
            ),

            Container(
              width: 200,
              height: 200,
              color: Colors.blue[200],
              margin: EdgeInsets.all( 12),
            ),


            Container(
              width: 150,
              height: 150,
              color: Colors.blue[150],
              margin: EdgeInsets.all( 12),
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.blue[100],
              margin: EdgeInsets.all( 12),
            ),
 
          ],
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

      )
    ;
  }
}
