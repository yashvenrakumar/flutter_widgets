import 'package:flutter/material.dart';

class TransformDemo extends StatefulWidget {
   
  final String title = "Transform Demo";

  @override
  TransformDemoState createState() => TransformDemoState();
}

class TransformDemoState extends State<TransformDemo> {
  double sliderVal = 0;

  @override
  initState() {
    super.initState();
    sliderVal = 0;
  }

  Container threeD() {
    return Container(
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, sliderVal / 1000)
          ..rotateX(3.14 / 20.0),
        alignment: FractionalOffset.center,
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.blue,
          child: Center(child: Text("data 3d",style: TextStyle(color: Colors.black
          , fontSize: 20),)),
        ),
      ),
    );
  }

  Container skew() {
    return Container(
      child: Transform(
        transform: Matrix4.skewX(sliderVal / 100),
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.blue,
          child: Center(child: Text("skew",style: TextStyle(color: Colors.black
          , fontSize: 20),)),
        ),
      ),
    );
  }

  Container translate() {
    return Container(
      child: Transform.translate(
        offset: Offset(sliderVal, 0.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.yellow,
          child: Center(child: Text("translate",style: TextStyle(color: Colors.black
          , fontSize: 20),)),
        ),
      ),
    );
  }

  Container scale() {
    return Container(
      child: Transform.scale(
        scale: sliderVal == 0 ? 1 : sliderVal / 50,
        origin: Offset(0.0, 0.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.green,
          child: Center(child: Text("scale",style: TextStyle(color: Colors.black
          , fontSize: 20),)),
        ),
      ),
    );
  }

  Container rotate() {
    return Container(
      child: Transform.rotate(
        angle: sliderVal,
        origin: Offset(0.0, 0.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
          child: Center(child: Text("rotate",style: TextStyle(color: Colors.black
          , fontSize: 20),)),
        ),
      ),
    );
  }

  Slider slider() {
    return Slider(
      value: sliderVal,
      min: 0,
      max: 100,
      onChanged: (val) {
        setState(() {
          sliderVal = val;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Transform example",style: TextStyle(color: Colors.black),),
         ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          slider(),
          rotate(),
          scale(),
          translate(),
          skew(),
          threeD(),
        ],
      ),
    );
  }
}









// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(),
//       body: new Center(
//         child: new Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             new Container(
//               alignment: new FractionalOffset(0.5, 0.5),
//               height: 144.0,
//               width: 360.0,
//               decoration: new BoxDecoration(
//                 border: new Border.all(color: new Color(0xFF9E9E9E))
//               ),
//               child: new Transform(
//                 transform: new Matrix4.identity()..scale(1.0, 0.05),   
//                   child: new Container(
//                   decoration: new BoxDecoration(
//                     color: new Color(0xFF005CA9),        
//                   ),        
//                 ), 
//               )         
//             )         
//           ],
//         ),
//       ),
//     );
//   }
// }

