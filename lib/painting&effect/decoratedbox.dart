import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class Decoratedboxx extends StatefulWidget {
  @override
  _DecoratedboxxState createState() => _DecoratedboxxState();
}

class _DecoratedboxxState extends State<Decoratedboxx> {
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
           title: Text(" DecoratedBox ",style: TextStyle(color: Colors.black),),
         ),
      body: Center(
        child: DecoratedBox(
  position: DecorationPosition.background,
  decoration: BoxDecoration(
    color: const Color(0xFFFFFFFF),
    border: Border.all(
        color: const Color(0xFF000000),
        style: BorderStyle.solid,
        width: 4.0,
    ),
    borderRadius: BorderRadius.zero,
    shape: BoxShape.rectangle,
    boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66000000),
          blurRadius: 10.0,
          spreadRadius: 4.0,
        )
    ],
  ),
  child: Container(
    child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.all(20),
        child: FlutterLogo(),
    ),
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
  sourceFilePath: 'lib/painting&effect/decoratedbox.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/painting%26effect/decoratedbox.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Decoratedboxx());
    }
  }
 
 