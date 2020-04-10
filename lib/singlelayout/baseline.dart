 


import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class BasicBaseline extends StatelessWidget {
  //A widget that positions its child according to the child's baseline.
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
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" BaseLine",style: TextStyle(color: Colors.black),),
         ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 120.0,
          width: 120.0,
          child: Baseline(
            child: Container(
              color: Colors.red,
              height: 60.0,
              width: 60.0,
            ),
            baseline: 30.0,
            baselineType: TextBaseline.alphabetic,
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
  sourceFilePath: 'lib/singlelayout/baseline.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/baseline.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: BasicBaseline());
    }
  }
 
 