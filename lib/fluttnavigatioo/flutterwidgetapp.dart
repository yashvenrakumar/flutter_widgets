import 'package:flutter/material.dart';
 

class MyWidgetsApp extends StatefulWidget {
  @override
  _MyWidgetsAppState createState() => _MyWidgetsAppState();
}

class _MyWidgetsAppState extends State<MyWidgetsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         
        title: Text('Widgetappdemo',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
            Container(
          width: 220,
          height: 50,
         margin: EdgeInsets.fromLTRB( 50, 20, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.blue[100],
            child: Text(" go to second page",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>Secondpage()));
          }),
        ),


 

 Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 50, 150, 0,0),
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
      
    );
  }
}



class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(" second page"),
      ),
      body: Center(
        child: Text(" this ia a second page"),
      ),
      
    );
  }
}