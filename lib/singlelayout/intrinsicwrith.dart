import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class BasicIntrinsicWidth extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

           })
         ],
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
         backgroundColor: Colors.white,
         title: Text("intrinsicwidth",style: TextStyle(
        color: Colors.black,
      ),)),
      body: Center(
        child: IntrinsicWidth(
          child: Container(
            height: 70.0,
            width: 150.0,
            color: Colors.red,
            child: Container(color: Colors.orange[300], width: 100.0),
          ),
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
  sourceFilePath: 'lib/singlelayout/intrinsicwrith.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/intrinsicwrith.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: BasicIntrinsicWidth());
    }
  }
 
 