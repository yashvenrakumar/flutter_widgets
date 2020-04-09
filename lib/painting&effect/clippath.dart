import 'package:flutter/material.dart';


class Clippathh extends StatefulWidget {
  @override
  _ClippathhState createState() => _ClippathhState();
}

class _ClippathhState extends State<Clippathh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" ClipPath",style: TextStyle(color: Colors.black),),
         ),
      body: Center(
        child: ClipPath(
	
    clipper: MyCustomClipper(),
	
    child: Image.network(
	
      'https://i.ibb.co/1vXpqVs/flutter-logo.jpg',
	
    ),
	
  ),

      ),
      
    );
  }
}

  // child: ClipPath(
	
  //   clipper: MyCustomClipper(),
	
  //   child: Image.network(
	
  //     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg',
	
  //   ),
	
  // ),



  class MyCustomClipper extends CustomClipper<Path> {
	
    @override
	
    Path getClip(Size size) {
	
      final path = Path();
	
      path.lineTo(size.width, 0.0);
	
      path.lineTo(size.width * 0.75, size.height);
	
      path.lineTo(size.width * 0.25, size.height);
	
      path.close();
	
      return path;
	
    }
	
  
	
    @override
	
    bool shouldReclip(CustomClipper oldClipper) {
	
      return false;
	
    }
	
  }






























//   Center(
//         child: ClipPath(
//         clipper: MessageClipper(),
//     child: Container(
//       height: 41.66,
//       width: 91.63,
//     decoration: BoxDecoration(
//     borderRadius: BorderRadius.all(Radius.circular(16.0)),
//     color: Colors.red,
//     ),
//     child:
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         Container(
//           width: 7,
//           height: 8,
//           decoration: BoxDecoration(
//               color: Color(0xFFCCCCCC),
//               shape: BoxShape.circle),
//         ),
//         Container(
//           width: 7,
//           height: 8,
//           decoration: BoxDecoration(
//               color: Color(0xFFCCCCCC),
//               shape: BoxShape.circle),
//         ),
//         Container(
//           width: 7,
//           height: 8,
//           decoration: BoxDecoration(
//               color: Color(0xFFCCCCCC),
//               shape: BoxShape.circle),
//         ),
//         Container(
//           width: 25,
//           height: 24,
//           decoration: BoxDecoration(
//               color: Color(0xFF1287BA),
//               shape: BoxShape.circle),
//           child: Center(
//             child: Text(
//               "17",
//               style: TextStyle(color: Color(0xFFFFFFFF)),
//             ),
//           ),
//         ),
//       ],

//     ),
//     ),)
//     )






//     class MessageClipper extends CustomClipper<Path> {
//   final double borderRadius = 15;
//   @override
//   Path getClip(Size size) {
//     double width = size.width;
//     double height = size.height;
//     double rheight = height - height / 3;
//     double oneThird = width / 3;

//     final path = Path()
//       ..lineTo(0, rheight - borderRadius)
//       ..cubicTo(0, rheight - borderRadius, 0, rheight, borderRadius, rheight)
//       ..lineTo(oneThird, rheight)
//       ..lineTo(width/2-borderRadius, height-borderRadius)
//       ..cubicTo(width / 2 - borderRadius, height - borderRadius, width / 2,
//           height, width / 2 + borderRadius, height - borderRadius )
//       ..lineTo(2 * oneThird, rheight)
//       ..lineTo(width-borderRadius, rheight)
//       ..cubicTo(width - borderRadius, rheight, width, rheight, width,
//           rheight - borderRadius)
//       ..lineTo(width, 0)
//       ..lineTo(0, 0);
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }













// import 'package:flutter/material.dart';
// import 'package:clip_ppath/shape/ShapeClipper.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => new _HomeState();
//  }
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//    return new Stack(
//       children: <Widget>[
//         Scaffold(
//             backgroundColor: Color(0xFFF0F0F0),
//             bottomNavigationBar: new BottomAppBar(
//               elevation: 0.0,
//               shape: CircularNotchedRectangle(),
//               child: new Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   IconButton(onPressed: () {}, icon: Icon(Icons.home, color: Colors.black54,),),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.star, color: Colors.black54),),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.delete, color: Colors.black54),),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black54),),
//                 ],
//               ),
//             ),
//             floatingActionButton: new FloatingActionButton(
//               child: Icon(Icons.add), onPressed: () {},
//             ),
//             floatingActionButtonLocation:
//               FloatingActionButtonLocation.centerDocked,
//             ),
//         ClipPath(
//           clipper: ShapeClipper(),
//           child: Container(
//             height: MediaQuery.of(context).size.height / 5,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color(0xFF446cb7),
//                   Color(0xFF3e89c2),
//                   Color(0xFF4ac1df),
//                 ],
//                 begin: FractionalOffset.bottomCenter,
//                 end: FractionalOffset.topCenter,
//                 tileMode: TileMode.clamp
//               ),
//             ),
//             child: AppBar(
//               title: Text(
//                 'ClipPath',
//               ),
//               backgroundColor: Colors.transparent,
//               elevation: 0.0,
//             ),
//           ),
//         )
//       ],
//    );
//   }
// }







// class ShapeClipper extends CustomClipper<Path>{
  
//   @override
//   Path getClip(Size size) {
    
//     var path = Path();

//     path.lineTo(0.0, size.height - 20);

//     var primerPuntoControlInicio  = Offset(size.width /4, size.height);
//     var primerPuntoControlFin     = Offset(size.width / 2.20, size.height - 68);

//     path.quadraticBezierTo(primerPuntoControlInicio.dx, primerPuntoControlInicio.dy, primerPuntoControlFin.dx, primerPuntoControlFin.dy);

//     var segundoPuntoControlInicio = Offset(size.width - (size.width / 3.25), size.height -135);
//     var segundoPuntoControlFin    = Offset(size.width, size.height - 120);

//     path.quadraticBezierTo(segundoPuntoControlInicio.dx, segundoPuntoControlInicio.dy, segundoPuntoControlFin.dx, segundoPuntoControlFin.dy);

//     path.lineTo(size.width, 0.0);
    
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     return null;
//   }


// }






// import 'package:flutter/material.dart';
// //import 'package:flutter/widgets.dart';
// void main()=> runApp(MaterialApp(
//   home: MyApp(),
// ));

// class MyApp extends StatefulWidget{
//   @override
//   MyAppState createState() => MyAppState();
// }

// class MyAppState extends State<MyApp>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//           body: Container(
//             child: Container(
// //                height:,
// //                width: double.infinity,
//               child: ClipPath(
//                 clipper: MyClip(),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   color: Colors.red,
//                   height: 250,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 18.0),
//                     child: Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text("LOGIN", style: TextStyle(
//                         fontSize: 45.0,
//                         letterSpacing: 3.0,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//     );
//   }
// }

// class MyClip extends CustomClipper<Path>{
//   @override
//   Path getClip(Size size){
//     var path = Path();
//     path.lineTo(0.0, size.height);
//     path.quadraticBezierTo(size.width/4, size.height - 50, size.width/2, size.height - 15);
//     path.quadraticBezierTo((size.width * 0.75), size.height + 10, size.width, size.height - 150);

//     path.lineTo(size.width, size.height - 50);

//     path.lineTo(size.width, 0.0);

//     path.moveTo(120, size.height - 10);


//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;


// }

