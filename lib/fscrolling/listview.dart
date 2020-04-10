import 'package:flutter/material.dart';  

import 'package:widget_with_codeview/widget_with_codeview.dart';
    
      
    class Listvieww extends StatefulWidget {  
  @override
  _ListviewwState createState() => _ListviewwState();
}

class _ListviewwState extends State<Listvieww> {
      @override  
      Widget build(BuildContext context) {  
         
      
        return   Scaffold(  
        appBar: AppBar(
          actions: <Widget>[
            IconButton(icon:  Icon( Icons.code, size: 30, color: Colors.black,),
             onPressed:(){

                         Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

             })
          ], 
           leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
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


class Codeview extends StatefulWidget {
  @override
  _CodeviewState createState() => _CodeviewState();
}

class _CodeviewState extends State<Codeview> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: WidgetWithCodeView(
  child: MyAwesomeWidget(),
  sourceFilePath: 'lib/fscrolling/listview.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fscrolling/listview.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Listvieww());
    }
  }
 
 