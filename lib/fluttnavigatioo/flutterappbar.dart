import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class Appbarexa extends StatefulWidget {
  @override
  _AppbarexaState createState() => _AppbarexaState();
}

class _AppbarexaState extends State<Appbarexa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("AppBar example"),
        actions: <Widget>[
          Icon(Icons.comment),
          Icon(Icons.settings),
        ],
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 50.0,
        leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
        bottom: PreferredSize(child: Icon(Icons.linear_scale,size: 60.0,), preferredSize: Size.fromHeight(50.0)),
      ),

      body: Center(
        child:       Container(
          width: 220,
          height: 50,
          //margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
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
  sourceFilePath: 'lib/fluttnavigatioo/flutterappbar.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttnavigatioo/flutterappbar.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Appbarexa());
    }
  }
 
 