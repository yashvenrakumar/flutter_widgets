import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
 

class FrostedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

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
           title: Text(" Backdropfilter",style: TextStyle(color: Colors.black),),
         ),
      body: new Stack(
        
        children: <Widget>[
          new ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: new FlutterLogo()
          ),
          new Center(
            child: new ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: new BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5)
                  ),
                  child: new Center(
                    child: new Text(
                      'Frosted',
                      style: Theme.of(context).textTheme.display3
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )

,
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
  sourceFilePath: 'lib/painting&effect/backbropfilter.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/painting%26effect/backbropfilter.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: FrostedDemo());
    }
  }
 
 