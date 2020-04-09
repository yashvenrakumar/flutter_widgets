import 'package:flutter/material.dart';
 
 
class RowsAndColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white,
         title: Text("intrinsicheight",style: TextStyle(
        color: Colors.black,
      ),)),
          body:  Container(
            margin: EdgeInsets.fromLTRB( 0, 100,0,0),
                      child: IntrinsicHeight(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(flex: 1, child: Container(color: Colors.amber)),
              Expanded(
                flex: 2,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Wrap(
                    spacing: 10,
                    runSpacing: 5,
                    children: <Widget>[
                      Container(height: 40.0, width: 130.0, color: Colors.purple),
                      Container(height: 40.0, width: 140.0, color: Colors.red),
                    ],
                  ),
                ]),
              ),
            ],
        ),
      ),
          ),
    );
  }
}















// import 'package:flutter/material.dart';

// class BasicIntrinsicHeight extends StatelessWidget {
//   //A widget that sizes its child to the child's intrinsic height.

//   //This class is useful, for example, when unlimited height is available and you would like a child that would
//   //otherwise attempt to expand infinitely to instead size itself to a more reasonable height
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("IntrinsicHeight Widget")),
//       body: Center(
//         child: IntrinsicHeight(
//           child: Container(
//             height: 100.0,
//             width: 40.0,
//             color: Colors.red,
//             child: Container(color: Colors.blue, height: 50.0),
//           ),
//         ),
//       ),
//     );
//   }
// }