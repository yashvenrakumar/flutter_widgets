
 
import 'package:flutter/material.dart';
 
class Tableexample extends StatefulWidget {
  @override
  _TableexampleState createState() => _TableexampleState();
}

class _TableexampleState extends State<Tableexample> {
   double iconSize = 40;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Table example",style: TextStyle(color: Colors.black),),
         ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.all(),
                columnWidths: {0: FractionColumnWidth(.3), 1: FractionColumnWidth(.3), 2: FractionColumnWidth(.3)},
                children: [
                  TableRow( children: [
                    Column(children:[
                      Icon(Icons.account_box, size: iconSize,),
                      Text('My Account')
                    ]),
                    Column(children:[
                      Icon(Icons.settings, size: iconSize,),
                      Text('Settings')
                    ]),
                    Column(children:[
                      Icon(Icons.lightbulb_outline, size: iconSize,),
                      Text('Ideas')
                    ]),
                  ]),
                  TableRow( children: [
                    Icon(Icons.cake, size: iconSize,),
                    Icon(Icons.voice_chat, size: iconSize,),
                    Icon(Icons.add_location, size: iconSize,),
                  ]),
                ],
              ),
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

          ]))
    );
  }
} 