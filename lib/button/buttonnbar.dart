import 'package:flutter/material.dart';



class Buttonbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar( 
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
        child: RaisedButton(onPressed: null,
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