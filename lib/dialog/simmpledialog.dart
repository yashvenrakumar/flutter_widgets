
//rflutter_alert: 

// import 'package:flutter/material.dart';  
      
     
//     class TextFieldAlertDialog extends StatelessWidget {  
//       TextEditingController _textFieldController = TextEditingController();  
      
//       _displayDialog(BuildContext context) async {  
//         return showDialog(  
//             context: context,  
//             builder: (context) {  
//               return AlertDialog(  
//                 title: Text('TextField AlertDemo'),  
//                 content: TextField(  
//                   controller: _textFieldController,  
//                   decoration: InputDecoration(hintText: "TextField in Dialog"),  
//                 ),  
//                 actions: <Widget>[  
//                   new FlatButton(  
//                     child: new Text('SUBMIT'),  
//                     onPressed: () {  
//                       Navigator.of(context).pop();  
//                     },  
//                   )  
//                 ],  
//               );  
//             });  
//       }  
      
//       @override  
//       Widget build(BuildContext context) {  
//         return Scaffold(  
//           appBar: AppBar(  
//             title: Text('TextField AlertDialog Demo'),  
//           ),  
//           body: Center(  
//             child: FlatButton(  
//               child: Text(  
//                 'Show Alert',  
//                 style: TextStyle(fontSize: 20.0),),  
//                 padding: EdgeInsets.fromLTRB(20.0,12.0,20.0,12.0),  
//                 shape: RoundedRectangleBorder(  
//                   borderRadius: BorderRadius.circular(8.0)  
//                 ),  
//               color: Colors.green,  
//               onPressed: () => _displayDialog(context),  
//             ),  
//           ),  
//         );  
//       }  
//     }  


//  Alert(
//         context: context,
//         title: "LOGIN",
//         content: Column(
//           children: <Widget>[
//             TextField(
//               decoration: InputDecoration(
//                 icon: Icon(Icons.account_circle),
//                 labelText: 'Username',
//               ),
//             ),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 icon: Icon(Icons.lock),
//                 labelText: 'Password',
//               ),
//             ),
//           ],
//         ),
//         buttons: [
//           DialogButton(
//             onPressed: () => Navigator.pop(context),
//             child: Text(
//               "LOGIN",
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//           )
//         ]).show();




// class MyPage extends StatefulWidget {
//     @override
//     _MyPageState createState() => _MyPageState();
// }

// class _MyPageState extends State<MyPage> {
//     bool _tryAgain = false;

//     @override
//     void initState() {
//       super.initState();
//       _checkWifi();
//     }

//     _checkWifi() async {
//       // the method below returns a Future
//       var connectivityResult = await (new Connectivity().checkConnectivity());
//       bool connectedToWifi = (connectivityResult == ConnectivityResult.wifi);
//       if (!connectedToWifi) {
//         _showAlert(context);
//       }
//       if (_tryAgain != !connectedToWifi) {
//         setState(() => _tryAgain = !connectedToWifi);
//       }
//     }

//     @override
//     Widget build(BuildContext context) {
//       var body = Container(
//         alignment: Alignment.center,
//         child: _tryAgain
//           ? RaisedButton(
//               child: Text("Try again"),
//               onPressed: () {
//                 _checkWifi();
//             })
//           : Text("This device is connected to Wifi"),
//       );

//       return Scaffold(
//         appBar: AppBar(title: Text("Wifi check")),
//         body: body
//       );
//     }

//     void _showAlert(BuildContext context) {
//       showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: Text("Wifi"),
//             content: Text("Wifi not detected. Please activate it."),
//           )
//       );
   

//  }
// }



 
// class Alert extends StatefulWidget {
 
//   AlertState createState() => AlertState();
 
// }
 
// class AlertState extends State {
 
//   showAlert(BuildContext context) {
//     showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: new Text('Alert Message Title Text.'),
//         actions: <Widget>[
//           FlatButton(
//             child: new Text("OK"),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//      },
//     );
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child:
//             RaisedButton(
//               onPressed: () => showAlert(context),
//               child: Text('Click Here To Show Alert Dialog Box'),
//               textColor: Colors.white,
//               color: Colors.green,
//               padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//             ),
//       ),
//     );
//   }
// }