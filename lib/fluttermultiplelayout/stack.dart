import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class StackExample extends StatefulWidget {
  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: AppBar( 
        leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Stack example",style: TextStyle(color: Colors.black),),
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
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          }),
        ),

              ],
      )

      )
    ;
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
  sourceFilePath: 'lib/fluttermultiplelayout/stack.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttermultiplelayout/stack.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: StackExample());
    }
  }
 
 