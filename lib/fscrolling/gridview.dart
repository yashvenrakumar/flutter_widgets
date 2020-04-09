import 'package:flutter/material.dart';


class Gridview extends StatefulWidget {
  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Columnn",style: TextStyle(color: Colors.black),),
         ),

body:GridView.count(crossAxisCount:  2,
crossAxisSpacing: 12,
mainAxisSpacing: 12,

children: <Widget>[

  Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
    
    
  ),

   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),

     RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).pop();
          }),
        


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),



   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),



  
],

),      
    );
  }
}