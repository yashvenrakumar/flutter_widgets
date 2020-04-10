

import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class Scrollbarr extends StatefulWidget {
  @override
  _ScrollbarrState createState() => _ScrollbarrState();
}

class _ScrollbarrState extends State<Scrollbarr> {
  @override
  Widget build(BuildContext context) {

         return  Scaffold(
           appBar: AppBar( 
              leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
         actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed: (){
                                         Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

           })
         ],
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Scrollbar",style: TextStyle(color: Colors.black),),
         ),
            body: SafeArea(
              child: Scrollbar(
                 child: SingleChildScrollView(
                child: Column(
                children: <Widget>[
 
                  Container(
                    color: Colors.pink, // Yellow
                    height: 120.0,
                  ),
 
                  Image.network('https://flutter-examples.com/wp-content/uploads/2019/09/blossom.jpg',
                     width: 300, height: 200, fit: BoxFit.contain),
 
                  Image.network('https://flutter-examples.com/wp-content/uploads/2019/09/sample_img.png',
                     width: 200, fit: BoxFit.contain),
                 
                  Container(
                    color: Colors.blue, // Yellow
                    height: 120.0,
                  ),
 
                  Text('Some Sample Text - 1', style: TextStyle(fontSize: 28)),
 
                  Container(
                    color: Colors.orange, // Yellow
                    height: 120.0,
                  ),
 
                  Image.network('https://flutter-examples.com/wp-content/uploads/2019/09/blossom.jpg',
                     width: 300, height: 200, fit: BoxFit.contain),
 
                  Text('Some Sample Text - 2', style: TextStyle(fontSize: 28)),
 
                  Text('Some Sample Text - 3', style: TextStyle(fontSize: 28)),
 
                ],
              ),
             ),
               
            )
          )
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
  sourceFilePath: 'lib/fscrolling/scrollbar.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fscrolling/scrollbar.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Scrollbarr());
    }
  }
 
 