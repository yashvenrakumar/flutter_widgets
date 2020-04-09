import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Expended",style: TextStyle(color: Colors.black),),
         ),
          body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.deepOrange,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
              ),
            ),
            Container(
              height: 100,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}












// import 'package:flutter/material.dart';

// class ExpandedExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       child: Row(
//         children: <Widget>[
//           Container(
//             width: 60,
//             color: Colors.deepOrange,
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: Colors.green,
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               color: Colors.black,
//             ),
//           ),
//           Container(
//             width: 60,
//             color: Colors.deepPurple,
//           ),
//         ],
//       ),
//     );
//   }
// }
