
 
import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
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
              leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
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
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          }),
        ),

          ]))
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
  sourceFilePath: 'lib/fluttermultiplelayout/table.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttermultiplelayout/table.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Tableexample());
    }
  }
 
 