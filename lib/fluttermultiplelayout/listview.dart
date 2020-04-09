import 'package:flutter/material.dart';  
      
    
      
    class Listvieww extends StatefulWidget {  
  @override
  _ListviewwState createState() => _ListviewwState();
}

class _ListviewwState extends State<Listvieww> {
      @override  
      Widget build(BuildContext context) {  
         
      
        return   Scaffold(  
        appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" ListView",style: TextStyle(color: Colors.black),),
         ),
            body: ListView(  
              children: <Widget>[  
                ListTile(  
                  leading: Icon(Icons.map),  
                  title: Text('Map'),  
                ),  
                ListTile(  
                  leading: Icon(Icons.photo_album),  
                  title: Text('Album'),  
                ),  
                ListTile(  
                  leading: Icon(Icons.phone),  
                  title: Text('Phone'),  
                ),  
                ListTile(  
                  leading: Icon(Icons.contacts),  
                  title: Text('Contact'),  
                ),  
                ListTile(  
                  leading: Icon(Icons.settings),  
                  title: Text('Setting'),  
                ),  
              ],  
            ),  
            
        );  
      }  
}  