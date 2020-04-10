import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class Buttonbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
           leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }), 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" ButtonBar",style: TextStyle(color: Colors.black),),
         ),

      body: Column(
        children: <Widget>[
           Container(
             margin: EdgeInsets.fromLTRB( 80, 100, 0, 0),
                      child: ButtonBar(
     children: <Widget>[
      FlatButton(
      child: Text('Ok'),
      color: Colors.blue,
      onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Yashven()));
      },
      ),
    FlatButton(
      child: Text('Cancel'),
      color: Colors.blue,
      onPressed: () { 
         Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Yashven()));
  
      },
    ),


        Center(
      child: Container(
        margin: EdgeInsets.fromLTRB( 0, 50, 0, 0),
        width: 200,
        height: 50,
        child: RaisedButton(
          onPressed: (){
              Navigator.of(context).push( MaterialPageRoute(builder: (context)=>Codeview()));
         },
          child: Center(child: Text(" Source Code here",
          style: TextStyle(color: Colors.black, fontSize: 20),),),
        ),
      ),
    )
  ],
),
          )
        ],
      ),
      
    );
  }
}


class Yashven extends StatefulWidget {
  @override
  _YashvenState createState() => _YashvenState();
}

class _YashvenState extends State<Yashven> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(" example buttonbar"),),
           body: Container(
        color: Colors.amber,
        
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
  sourceFilePath: 'lib/button/buttonnbar.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/button/buttonnbar.dart',
      ),
      
    );
  }
}

class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Buttonbar());
    }
  }
