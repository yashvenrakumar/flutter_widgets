import 'package:flutter/material.dart';
 

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Custompaint ",style: TextStyle(color: Colors.black),),
         ),

          body: CustomPaint(
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Center(child: Text(" custompaint ")),
        ),
        painter: CurvePainter(),
      ),
    );
  }
}


class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
  Path path = Path();
  Paint paint = Paint();


  path.lineTo(0, size.height *0.75);
  path.quadraticBezierTo(size.width* 0.10, size.height*0.70,   size.width*0.17, size.height*0.90);
  path.quadraticBezierTo(size.width*0.20, size.height, size.width*0.25, size.height*0.90);
  path.quadraticBezierTo(size.width*0.40, size.height*0.40, size.width*0.50, size.height*0.70);
  path.quadraticBezierTo(size.width*0.60, size.height*0.85, size.width*0.65, size.height*0.65);
  path.quadraticBezierTo(size.width*0.70, size.height*0.90, size.width, 0);
  path.close();

  paint.color = Colors.blue[100];
  canvas.drawPath(path, paint);

  path = Path();
  path.lineTo(0, size.height*0.50);
  path.quadraticBezierTo(size.width*0.10, size.height*0.80, size.width*0.15, size.height*0.60);
  path.quadraticBezierTo(size.width*0.20, size.height*0.45, size.width*0.27, size.height*0.60);
  path.quadraticBezierTo(size.width*0.45, size.height, size.width*0.50, size.height*0.80);
  path.quadraticBezierTo(size.width*0.55, size.height*0.45, size.width*0.75, size.height*0.75);
  path.quadraticBezierTo(size.width*0.85, size.height*0.93, size.width, size.height*0.60);
  path.lineTo(size.width, 0);
  path.close();

  paint.color = Colors.yellow[100];
  canvas.drawPath(path, paint);

  path =Path();
  path.lineTo(0, size.height*0.75);
  path.quadraticBezierTo(size.width*0.10, size.height*0.55, size.width*0.22, size.height*0.70);
  path.quadraticBezierTo(size.width*0.30, size.height*0.90, size.width*0.40, size.height*0.75);
  path.quadraticBezierTo(size.width*0.52, size.height*0.50, size.width*0.65, size.height*0.70);
  path.quadraticBezierTo(size.width*0.75, size.height*0.85, size.width, size.height*0.60);
  path.lineTo(size.width, 0);
  path.close();

  paint.color =  Colors.orange[100];
  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}






// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show SystemChrome, DeviceOrientation;
// import 'dart:math' show min, Random;
// import 'dart:async' show Timer;

// void main() => runApp(App());

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'fCreate', theme: ThemeData.light(), home: Home());
//   }
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> implements White {
//   var _tm;
//   int _b = 8;
//   double _h = 1;
//   double _g = 0;
//   bool _e = true;
//   int _wh = -1;
//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//   }

//   @override
//   setW(int c) {
//     if (!_tm.isActive)
//       setState(() {
//         _wh = c;
//       });
//     else
//       _wh = c;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('fCreate'),
//           elevation: 16,
//           backgroundColor: Colors.cyanAccent),
//       body: Stack(children: <Widget>[
//         Opacity(
//             opacity: _g,
//             child: GestureDetector(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         colors: [Colors.cyanAccent, Colors.tealAccent],
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight),
//                   ),
//                   padding: EdgeInsets.all(16),
//                   child: CustomPaint(
//                       painter: Painter(_b, this), size: Size.infinite),
//                 ),
//                 onTap: () {
//                   if (_tm.isActive) {
//                     _tm.cancel();
//                     showDialog(
//                         context: context,
//                         builder: (cx) => Dialog(
//                             elevation: 9,
//                             child: Padding(
//                                 padding: EdgeInsets.all(16),
//                                 child: Text(
//                                     '$_wh/${_b * _b} White Balls ${_wh >= (_b * _b) / 2 ? '\u{2714}' : '\u{2716}'}',
//                                     style: TextStyle(
//                                         fontSize: 25, letterSpacing: 2)))));
//                   }
//                 },
//                 onDoubleTap: () {
//                   if (!_tm.isActive)
//                     _tm = Timer.periodic(Duration(seconds: 1), (t) {
//                       if (t.isActive)
//                         setState(() {
//                           _b = Random().nextInt(12) + 8;
//                         });
//                     });
//                 })),
//         Opacity(
//             opacity: _h,
//             child: Center(
//                 child: Padding(
//                     padding: EdgeInsets.all(12),
//                     child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           Text('An EYE Test Game',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   letterSpacing: 3,
//                                   fontSize: 30)),
//                           Divider(color: Colors.white, height: 24),
//                           Text(
//                               'Click to reveal whether it has atleast 50% WHITE Balls. Double clicking restarts loop.',
//                               maxLines: 3)
//                         ]))))
//       ]),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _e
//             ? () {
//                 swap();
//                 _tm = Timer.periodic(Duration(seconds: 1), (t) {
//                   if (t.isActive)
//                     setState(() {
//                       _b = Random().nextInt(12) + 8;
//                     });
//                 });
//               }
//             : () {
//                 swap();
//                 _tm.cancel();
//               },
//         child: Icon(_e ? Icons.play_arrow : Icons.help),
//         backgroundColor: Colors.cyanAccent,
//         elevation: 16,
//         tooltip: _e ? 'Init' : 'Help',
//       ),
//     );
//   }

//   swap() {
//     var tmp = _h;
//     setState(() {
//       _h = _g;
//       _g = tmp;
//       _e = !_e;
//     });
//   }
// }

// class Painter extends CustomPainter {
//   Painter(this.b, this.wh);
//   List<Color> _cl = [Colors.white, Colors.black];
//   int b;
//   White wh;
//   @override
//   void paint(Canvas canvas, Size size) {
//     int w = 0;
//     double y = size.height / (b * 2);
//     while (y < size.height) {
//       double x = size.width / (b * 2);
//       while (x < size.width) {
//         var p = Paint()..color = _cl[Random().nextInt(2)];
//         w += (p.color == Colors.white) ? 1 : 0;
//         canvas.drawCircle(
//             Offset(x, y), min(size.height / (b * 2), size.width / (b * 2)), p);
//         x += size.width / b;
//       }
//       y += size.height / b;
//     }
//     wh.setW(w);
//   }

//   @override
//   bool shouldRepaint(Painter p) => true;
// }

// abstract class White {
//   setW(int c);
// }

 







// import 'dart:math' hide Point;

// import 'package:flutter/animation.dart';
// import 'package:flutter/material.dart';

// /// Allow circles to grow this much beyond the edges of the screen.
// const kExpandBorders = 100.0;

// /// Colors of circles on the screen will be randomly chosen from this list.
// final circleColors = [
//   0xffFC3761,
//   0xff3876FD,
//   0xff84CE73,
//   0xffFD8F38,
//   0xff8E4DBB,
//   0xffFDD749
// ].map((c) => new Color(c)).toList();

// /// Represents a single circle that's expanding and contracting.
// class Circle {
//   static final rand = new Random();
//   Offset center;
//   Color color = circleColors[rand.nextInt(circleColors.length)];
//   double radius = 1.0;
//   double velocity = 0.9;
//   bool flip = false;

//   void flipIfZero() {
//     if (velocity.isNegative && radius <= 1.0) {
//       flip = true;
//     }
//   }

//   void flipIntersectingCircles(Circle c2) {
//     Circle c1 = this;
//     final squared = (pow(c1.center.dx - c2.center.dx, 2.0) +
//         pow(c1.center.dy - c2.center.dy, 2.0));
//     final distance = sqrt(squared);
//     if (distance < (c1.radius + c2.radius)) {
//       // Edge case: ignore two concentric circles not yet touching.
//       if (distance >= (c1.radius - c2.radius).abs()) {
//         c1.flip = true;
//         c2.flip = true;
//       }
//     }
//   }

//   /// Reverse the circle's growth if it intersects with the edges of the
//   /// rendering area.
//   ///
//   /// kExpandBorders can be set to allow the rendering area to be larger than
//   /// the screen.
//   /// The size information is only available from [CustomPainter.paint],
//   /// so we can't do this test at the same time as [flipIntersectingCircles].
//   void flipIfIntersectsView(Size size) {
//     if (velocity > 0.0) {
//       if (center.dx - radius < -kExpandBorders ||
//           center.dy - radius < -kExpandBorders ||
//           center.dx + radius > size.width + kExpandBorders ||
//           center.dy + radius > size.height + kExpandBorders) {
//         flip = true;
//       }
//     }
//   }

//   void _applyFlip() {
//     if (flip) {
//       velocity = -velocity;
//       flip = false;
//     }
//   }

//   void updateRadius() {
//     _applyFlip();
//     radius += velocity;
//   }
// }

// class BouncingCircles extends StatefulWidget {
//   @override
//   _BouncingCirclesState createState() => new _BouncingCirclesState();
// }

// class _BouncingCirclesState extends State<BouncingCircles>
//     with SingleTickerProviderStateMixin {
//   final circles = <Circle>[];
//   AnimationController controller;
 

//   @override
//   void initState() {
//     super.initState();
//     controller = new AnimationController(vsync: this)
//       ..repeat(period: const Duration(seconds: 60))
//       ..addListener(() => setState(markCirclesToFlip));
//     circles.add(new Circle()..center = new Offset(100.0, 100.0));
//   }

//   @override
//   void dispose() {
//     controller.stop();
//     super.dispose();
//   }

//   void _clearCircles() {
//     setState(circles.clear);
//   }

//   void markCirclesToFlip() {
//     for (final c in circles) {
//       c.flipIfZero();
//     }

//     for (int i = 0; i < circles.length - 1; i++) {
//       for (int j = i + 1; j < circles.length; j++) {
//         circles[i].flipIntersectingCircles(circles[j]);
//       }
//     }
//   }

//   void _tapped(BuildContext context, TapDownDetails details) {
//     Offset local = ((context.findRenderObject() as RenderBox)
//         .globalToLocal(details.globalPosition));

//     setState(() {
//       circles.add(new Circle()..center = local);
//       if (circles.length > 50) circles.removeAt(0);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: new AppBar(title: new Text('Bouncing Circles')),
//         body: new Builder(
//             builder: (context) => new GestureDetector(
//                 onTapDown: (TapDownDetails details) =>
//                     _tapped(context, details),
//                 child: new Container(
//                     decoration:
//                         new BoxDecoration(color: const Color(0xFF000000)),
//                     child: new CustomPaint(
//                         willChange: true,
//                         child: new Container(),
//                         foregroundPainter: new CirclePainter(circles))))),
//         floatingActionButton: new FloatingActionButton(
//             onPressed: _clearCircles,
//             tooltip: 'Clear',
//             child: new Icon(Icons.clear)));
//   }
// }

// /// Renders all circles at once, which is much simpler than trying to represent
// /// each circle as a separate widget.
// ///
// /// You can't move this code into [_BouncingCirclesState] because CustomPainter
// /// has its own [build] function.
// class CirclePainter extends CustomPainter {
//   final circles;

//   CirclePainter(this.circles);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = new Paint()
//       ..strokeWidth = 3.0
//       ..style = PaintingStyle.stroke;

//     for (final circle in circles) {
//       circle.flipIfIntersectsView(size);
//       circle.updateRadius();
//       paint.color = circle.color;
//       canvas.drawCircle(circle.center, circle.radius, paint);
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }

// void main() {
//   runApp(new MaterialApp(
//       title: 'Bouncing Circles',
//       routes: <String, WidgetBuilder>{
//         '/': (BuildContext context) => new BouncingCircles()
//       }));
// }


















// import 'package:flutter/material.dart';

// Color red = Colors.red;
// Color ora = Colors.orange;
// Color gree = Colors.green;
// Color blue = Colors.blue;
// Color yell = Colors.yellow;

// class home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(

//         body: Container(
//           padding: EdgeInsets.all(8.0),

//           child: CustomPaint(


//             painter: MyCustomPainter(),

//             child: Container(

//               height: 500.0,

//             ),
//           ),

//         ),

//       ),
//     );
//   }
// }

// class MyCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint();

//     Path MainColorsPath = Path();
//     MainColorsPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
//     paint.color = red;
//     canvas.drawPath(MainColorsPath, paint);

//     Path yelcolorPath = Path();
//     yelcolorPath.moveTo(size.width - (size.width * 0.1), 0.0);
//     yelcolorPath.quadraticBezierTo(size.width * .5, size.height * 0.1, 0,
//         size.height - (size.height * 0.15));
//     yelcolorPath.lineTo(0, size.height);
//     yelcolorPath.lineTo(size.width * .25, size.height);
//     yelcolorPath.quadraticBezierTo(
//         size.width * .5, size.height * .7, size.width, size.height * 0.6);
//     yelcolorPath.lineTo(size.width, 0.0);
//     yelcolorPath.close();
//     paint.color = yell;
//     canvas.drawPath(yelcolorPath, paint);

//     Path purColorsPath = Path();
//     purColorsPath.lineTo(size.width * .45, 0);
//     purColorsPath.quadraticBezierTo(
//         size.width * .25, size.height * .3, 0, size.height * 0.5);
//     purColorsPath.close();
//     paint.color = gree;
//     canvas.drawPath(purColorsPath, paint);

//     Path oracolorpath = Path();
//     oracolorpath.moveTo(0, size.height * .8);

//     oracolorpath.quadraticBezierTo(size.width * .25, size.height * .85,
//         size.width * 0.40, size.height);

//     oracolorpath.lineTo(0, size.height);
//     oracolorpath.close();
//     paint.color = ora;
//     canvas.drawPath(oracolorpath, paint);

//     Path TriColorsPath = Path();
//     TriColorsPath.lineTo(size.width * 0.25, 0);
//     TriColorsPath.lineTo(0, size.height * 0.25);
//     TriColorsPath.close();
//     paint.color = blue;
//     canvas.drawPath(TriColorsPath, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return oldDelegate != this;
//   }
// }
 

