 


import 'package:flutter/material.dart';
 
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
            Navigator.of(context).pop();
          }),
        ),
          ],
        ),
      
    );
  }
}





// int _index = 0;

// @override
// Widget build(BuildContext context) {
//   return Column(
//     children: <Widget>[
//       Container(
//         height: 300,
//         child: IndexedStack(
//           index: _index,
//           children: <Widget>[
//             Container(
//               color: Colors.pink,
//               child: Center(
//                 child: Text('Page 1'),
//               ),
//             ),
//             Container(
//               color: Colors.cyan,
//               child: Center(
//                 child: Text('Page 2'),
//               ),
//             ),
//             Container(
//               color: Colors.deepPurple,
//               child: Center(
//                 child: Text('Page 3'),
//               ),
//             ),
//           ],
//         ),
//       ),
//       Row(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           FlatButton(
//             onPressed: () {
//               if (_index <= 0) return;
//               setState(() {
//                 _index -= 1;
//               });
//             },
//             child: Text(
//               "Prev",
//             ),
//           ),
//           FlatButton(
//             onPressed: () {
//               if (_index >= 2) return;
//               setState(() {
//                 _index += 1;
//               });
//             },
//             child: Text(
//               "Next",
//             ),
//           )
//         ],
//       )
//     ],
//   );
// }




    // import 'package:flutter/material.dart';

    // void main() => runApp(MyApp());

    // class MyApp extends StatelessWidget {
    //   @override
    //   Widget build(BuildContext context) {
    //     return MaterialApp(
    //       home: MyHomePage(),
    //     );
    //   }
    // }

    // class MyHomePage extends StatefulWidget {
    //   @override
    //   _MyHomePageState createState() => _MyHomePageState();
    // }

    // class _MyHomePageState extends State<MyHomePage> {
    //   int _currentIndex = 0;

    //   @override
    //   Widget build(BuildContext context) {
    //     return Scaffold(
    //       floatingActionButton: FloatingActionButton(
    //         child: Icon(Icons.refresh),
    //         onPressed: () {
    //           setState(() {
    //             _currentIndex = (_currentIndex + 1) % 3;
    //           });
    //         },
    //       ),
    //       body: Center(
    //         child: IndexedStack(
    //           index: _currentIndex,
    //           children: <Widget>[
    //             Container(height: 100, width: 100, color: Colors.red),
    //             Container(height: 100, width: 100, color: Colors.green),
    //             Container(height: 100, width: 100, color: Colors.blue),
    //           ],
    //         ),
    //       ),
    //     );
    //   }
    // }