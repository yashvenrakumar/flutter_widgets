import 'package:flutter/material.dart';

import 'buttonnbar.dart';

class Flatbutton extends StatefulWidget {
  @override
  _FlatbuttonState createState() => _FlatbuttonState();
}

class _FlatbuttonState extends State<Flatbutton> {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('FlatButton',style: TextStyle(color: Colors.black),),
          ),

          body: Center(child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('FlatButton Example'),
                onPressed: () {},
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('Login'),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Yashven()));
                },
              ),
            ),


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
            Navigator.of(context).pop();
          }),
        )
          ]))
    );
  }
}









// class MyApp extends StatefulWidget {
//   @override
//   _State createState() => new _State();
// }
// ​
// class _State extends State<MyApp>{
// ​
//   String _value = 'Hello World';
// ​
//   void _onPressed() {
//     setState(() {
//       _value = new DateTime.now().toString();
//     });
//   }
// ​
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Name here'),
//       ),
//       //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
//       body: new Container(
//         padding: new EdgeInsets.all(32.0),
//         child: new Center(
//           child: new Column(
//             children: <Widget>[
//               new Text(_value),
//               //dart treates everything as objects so we pass a function in onPressed value
              

// new FlatButton(onPressed: _onPressed, child: new Text('Click me'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

 