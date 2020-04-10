 


import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class Cliovall extends StatefulWidget {
  @override
  _CliovallState createState() => _CliovallState();
}

class _CliovallState extends State<Cliovall> {
void message(){
 
   print('Message Called.');
 
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
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
           title: Text(" Clipoval",style: TextStyle(color: Colors.black),),
         ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
 
            GestureDetector(
            onTap: () {message();},
            child: ClipOval(
              child: Container(
                color: Colors.lightBlue,
                height: 100.0,
                width: 100.0,
                child: Center(
                  child: Text('Round Shape', 
                  style: TextStyle(color: Colors.white, fontSize: 24), 
                    textAlign: TextAlign.center,)),
              ),
            ),
          ),
 
          GestureDetector(
            onTap: () {message();},
            child: ClipOval(
              child: Container(
                color: Colors.lightBlue,
                height: 100.0,
                width: 140.0,
                child: Center(
                  child: Text('Oval Shape', 
                  style: TextStyle(color: Colors.white, fontSize: 24), 
                    textAlign: TextAlign.center,)),
              ),
            ),
          ),
 
        ])
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
  sourceFilePath: 'lib/painting&effect/clipoval.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/painting%26effect/clipoval.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Cliovall());
    }
  }
 
 