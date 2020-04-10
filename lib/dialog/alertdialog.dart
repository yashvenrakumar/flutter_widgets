import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class Alertdialog extends StatefulWidget {
  @override
  _AlertdialogState createState() => _AlertdialogState();
}

class _AlertdialogState extends State<Alertdialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }), 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" ShowAlert",style: TextStyle(color: Colors.black),),
         ),

      body:  Column(
          
          children: <Widget>[
             Container(
               margin: EdgeInsets.fromLTRB( 0, 100, 0, 0),
               child: Center(
                 child: RaisedButton(
                   color: Colors.white,
                   elevation: 8,
            child: Text(" show alert"),
            onPressed:(){
                 Navigator.of(context)..push(MaterialPageRoute(builder:  (context)=>Showalert()));
            
          }
          
          ),
               ),
             ),
                   
                   
                         Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
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
                 ),
      
      
    );
  }
}



 class Showalert extends StatefulWidget {
   @override
   _ShowalertState createState() => _ShowalertState();
 }
 
 class _ShowalertState extends State<Showalert> {
   @override
   Widget build(BuildContext context) {
     return AlertDialog(
  content: new Container(
    width: 260.0,
    height: 230.0,
    decoration: new BoxDecoration(
      shape: BoxShape.rectangle,
      color: const Color(0xFFFFFF),
      borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
    ),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // dialog top
        new Expanded(
          child: new Row(
            children: <Widget>[
              new Container(
                // padding: new EdgeInsets.all(10.0),
                decoration: new BoxDecoration(
                  color: Colors.white,
                ),
                child: new Text(
                  'Rate',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'helvetica_neue_light',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),

        // dialog centre
        new Expanded(
          child: new Container(
              child: new TextField(
            decoration: new InputDecoration(
              border: InputBorder.none,
              filled: false,
              contentPadding: new EdgeInsets.only(
                  left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
              hintText: ' add review',
              hintStyle: new TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12.0,
                fontFamily: 'helvetica_neue_light',
              ),
            ),
          )),
          flex: 2,
        ),

        // dialog bottom
        new Expanded(
          child: new Container(
            padding: new EdgeInsets.all(16.0),
            decoration: new BoxDecoration(
              color: const Color(0xFF33b17c),
            ),
            child: new Text(
              'Rate product',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'helvetica_neue_light',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
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
  sourceFilePath: 'lib/dialog/alertdialog.dart',
  codeLinkPrefix: ' https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/dialog/alertdialog.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Alertdialog());
    }
  }
 
 