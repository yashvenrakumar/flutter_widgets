import 'dart:math';

import 'package:flutter/material.dart';

 
class BasicLimitedBox extends StatefulWidget {
  @override
  _BasicLimitedBoxState createState() => _BasicLimitedBoxState();
}

class _BasicLimitedBoxState extends State<BasicLimitedBox> {
  final length = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

         backgroundColor: Colors.white,
         title: Text("Limitedbox",style: TextStyle(
        color: Colors.black,
      ),)),
        
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: length,
          itemBuilder: (BuildContext context, int index) {
            return LimitedBox(
                maxHeight: 200,  
                  child: Container(
                    margin: EdgeInsets.all( 12),
                  color: UniqueColorGenerator.getColor(),
                ),
              );
          }
        )
      ),
    );
  }
}

class UniqueColorGenerator {
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}










// import 'package:flutter/material.dart';

// class BasicLimitedBox extends StatelessWidget {
//   //A box that limits its size only when it's unconstrained.

//   //If this widget's maximum width is unconstrained then its child's width is limited to maxWidth. Similarly, if
//   //this widget's maximum height is unconstrained then its child's height is limited to maxHeight.

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("LimitedBox Widget")),
//       body: Center(
//         child: LimitedBox(
//           //here, our container widget has no particular height or width
//           child: Container(
//             color: Colors.red,
//           ),
//           //we use the maxWidth & maxHeight to limit it
//         ),
//       ),
//     );
//   }
// }