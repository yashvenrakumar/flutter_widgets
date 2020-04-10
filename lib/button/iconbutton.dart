 


import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class Iconbutton extends StatefulWidget {
  @override
  _IconbuttonState createState() => _IconbuttonState();
}

class _IconbuttonState extends State<Iconbutton> {
 double _volume = 0.0;

// ...

Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
        leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('IconButton',style: TextStyle(color: Colors.black),),
          ),
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
            onPressed: () {
              setState(() {
                _volume += 10;
              });
            },
          ),
          Text('Volume : $_volume'),

            Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).push( MaterialPageRoute(builder: (context)=>Codeview()));
          }),
        )
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
  sourceFilePath: 'lib/button/iconbutton.dart',
  codeLinkPrefix: ' https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/button/iconbutton.dart',
      ),
      
    );
  }
}
class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Iconbutton());
    }
  }