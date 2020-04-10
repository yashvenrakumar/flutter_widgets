import 'package:flutter/material.dart';


import 'package:widget_with_codeview/widget_with_codeview.dart';
class Scafflo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
    home: Scaffold(
      appBar: AppBar(
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
        title: Text('appbar'),
        backgroundColor: Colors.orangeAccent,
      ),
      body:   Center(
        child:       Container(
          width: 220,
          height: 50,
         // margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          }),
        ),

      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.orangeAccent,onPressed: null,child: Text('Press'),),
    
  ));
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
  sourceFilePath: 'lib/fluttnavigatioo/flutterscaffold.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttnavigatioo/flutterscaffold.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Scafflo());
    }
  }
 
 