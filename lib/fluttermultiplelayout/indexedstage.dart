 


import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
 class Indexedstagge extends StatefulWidget {
   @override
   _IndexedstaggeState createState() => _IndexedstaggeState();
 }
 
 class _IndexedstaggeState extends State<Indexedstagge> {
  int i = 2;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
           title: Text(" IndexedStack",style: TextStyle(color: Colors.black),),
         ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: IndexedStack(
                index: i,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height -250,
                    color: Colors.red,),
                  Container(
                     height: MediaQuery.of(context).size.height -250,
                    color: Colors.green),
                  Container(
                     height: MediaQuery.of(context).size.height -250,
                    color: Colors.blue),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  if(i < 2){
                     i++; 
                  } else{
                    i = 0;
                  }
                });
              },


              child: Text('Show Next Widget'),
            ),

            
            Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 0, 0,0),
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
  sourceFilePath: 'lib/fluttermultiplelayout/indexedstage.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttermultiplelayout/indexedstage.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Indexedstagge());
    }
  }
 
 