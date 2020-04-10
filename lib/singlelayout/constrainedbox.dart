 


import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class BasicConstrainedBox extends StatelessWidget {
  //A widget that imposes additional constraints on its child.

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
        title: Text("ConstrainedBox Widget")),
      body: Center(
        child: ConstrainedBox(
          //set constraints property
          //BoxConstraints() : Creates box constraints with the given constraints.
          //BoxConstraints.expand(): Creates box constraints that expand to fill another box constraints.
          //BoxConstraints.tight(): Creates box constraints that is respected only by the given size.
          //BoxConstraints.loose(): Creates box constraints that forbid sizes larger than the given size.
          //BoxConstraints.tightFor(): Creates box constraints that require the given width or height.
         // BoxConstraints.tightForFinite(): Creates box constraints that require the given width or height, except if they are infinite.
          //here, our container, is 150x150, but we constrained it to 60x60
          constraints: BoxConstraints(maxHeight: 260.0, maxWidth: 200.0),
          child: Container(height: 150.0, width: 150.0, color: Colors.red),
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
  sourceFilePath: 'lib/singlelayout/constrainedbox.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/constrainedbox.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: BasicConstrainedBox());
    }
  }
 
 