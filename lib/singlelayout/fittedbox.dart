import 'package:flutter/material.dart';
 

import 'package:widget_with_codeview/widget_with_codeview.dart';

 class Fittedbox extends StatefulWidget {
   @override
   _FittedboxState createState() => _FittedboxState();
 }
 
 class _FittedboxState extends State<Fittedbox> {
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
           title: Text(" FittedBox ",style: TextStyle(color: Colors.black),),
         ),
      body: ListView(
            children: <Widget>[
              FittedBox(child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB( 0,100, 0,0),
                      alignment: Alignment.center,
                      child: Image.network("https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    ),
                  ),
                  Container(
                    child: Text("This is a sample text to understand FittedBox widget"),
                  )
                ],
              ),)
            ],
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
  sourceFilePath: 'lib/singlelayout/fittedbox.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/fittedbox.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Fittedbox());
    }
  }
 
 