import 'package:flutter/material.dart';


class Columnexample extends StatefulWidget {
  @override
  _ColumnexampleState createState() => _ColumnexampleState();
}

class _ColumnexampleState extends State<Columnexample> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Columnn",style: TextStyle(color: Colors.black),),
         ),
      body:  ListView(
        scrollDirection: Axis.vertical,

              children: <Widget>[

                 Column(
          
          children: <Widget>[
            Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),
              
          
                              Container(
           
          height: 100,
           width: MediaQuery.of(context).size.width,
          margin:  EdgeInsets.all( 12),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 30),),

            onPressed:(){
            Navigator.of(context).pop();
          }),
        ),
             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
              
            ),

            


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),




             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            )






            

          ],
        ),
              ],
      ),
      
    );
  }
}