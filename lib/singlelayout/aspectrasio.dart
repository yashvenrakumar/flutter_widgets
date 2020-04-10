import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';


class Aspectrasioo extends StatefulWidget {
  @override
  _AspectrasiooState createState() => _AspectrasiooState();
}

class _AspectrasiooState extends State<Aspectrasioo> {
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
           title: Text(" Aspectrasio",style: TextStyle(color: Colors.black),),
         ),
      
      body: Card(
 
  child: Column(
    children: <Widget>[
      Container(

        margin: EdgeInsets.fromLTRB( 0, 80, 0, 0),
        color: Colors.blue[50],
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlutterLogo(),
        ),
      )
    ],
  ),
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
  sourceFilePath: 'lib/singlelayout/aspectrasio.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/aspectrasio.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Aspectrasioo());
    }
  }
 
 