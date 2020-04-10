import 'dart:ui';

import 'package:flutter/material.dart';


import 'package:widget_with_codeview/widget_with_codeview.dart';
class AniCrossFade extends StatefulWidget {
  @override
  _AniCrossFadeState createState() => _AniCrossFadeState();
}

class _AniCrossFadeState extends State<AniCrossFade> {

  bool _first =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
        centerTitle: true,
        backgroundColor: Colors.white,

        title: Text(" AnimatedCrossFade",style: TextStyle(color: Colors.black),),
      ),
      body: Column(
         children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              margin: EdgeInsets.fromLTRB( 0, 50, 0, 0),
          child: Center(
            child:  GestureDetector(
              onTap: (){
                setState(() {
                  _first=!_first;
                });
              },
               child: AnimatedCrossFade(
                duration: const Duration(seconds: 2),
                firstChild: const FlutterLogo(
                  style: FlutterLogoStyle.horizontal, size: 200.0),
                secondChild: const FlutterLogo(style: 
                FlutterLogoStyle.stacked, size: 200.0),
                crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              ),
            )
          ),

        ),
        
          Center(child: Text( " Touch flutter logo",style: TextStyle(fontSize: 20),)),

          Container(
             margin: EdgeInsets.fromLTRB( 0, 100, 0, 0),
        
            child: RaisedButton(
              color: Colors.white,
              elevation: 10,
              onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
              }  ,
            child: Container(
              color: Colors.white,
             
              width: 200,
              height: 50,
              child: Center(child: Text( "Source code here",style: TextStyle(fontSize: 20),)),
 
            ),
            
            ),
          ),


         ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.transform),
      //   onPressed: () {
      //     setState(() {
      //      _first = !_first; 
      //     });
      //   }
      // ),
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
  sourceFilePath: 'lib/flutteranimation/anicrossfade.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/flutteranimation/anicrossfade.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: AniCrossFade());
    }
  }
 
 