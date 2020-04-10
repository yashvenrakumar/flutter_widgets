import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class Rotatedbox extends StatefulWidget {
  @override
  _RotatedboxState createState() => _RotatedboxState();
}

class _RotatedboxState extends State<Rotatedbox> {
  double _value;
  int _turns;

  @override
  void initState() {
    _value = 0.0;
    _turns = 0;
    super.initState();
  }

  void onChange(double value) {
    setState(() {
      _value = value;
      _turns = value.toInt();
    });
  }

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
           title: Text(" RotatedBox",style: TextStyle(color: Colors.black),),
         ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Slider(value: _value, onChanged: onChange, min: 0, max: 4,),
            RotatedBox(quarterTurns: _turns, child: Container(
              height: 200,
              width: 200,
               color: Colors.blue[50],
              child: Center(child: Text(" rotatedbox demo with slider"))),),


              Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 100, 0,0),
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
  sourceFilePath: 'lib/fluttermultiplelayout/rotaedbox.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttermultiplelayout/rotaedbox.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Rotatedbox());
    }
  }
 
 