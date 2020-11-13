import 'package:flutter/material.dart';
//import 'package:flutterallwidgets/homepage.dart';

import 'package:splashscreen/splashscreen.dart';

import 'course/course.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyAppa(),
    );
  }
}

class MyAppa extends StatefulWidget {
  @override
  _MyAppaState createState() => new _MyAppaState();
}

class _MyAppaState extends State<MyAppa> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 4,
      //navigateAfterSeconds: Matedesign(),
      navigateAfterSeconds: Course(),
      title: new Text(
        'Welcome In flutter Widgets',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
      ),

      image: new Image.network(
          'https://firebasestorage.googleapis.com/v0/b/flutterwithfirebase-9d09c.appspot.com/o/flutter2.png?alt=media&token=cde940ee-2146-4be8-a53a-e5beee31a588'),
      backgroundColor: Colors.white,

      gradientBackground: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue[100], Colors.orange[100]]),
      // styleTextUnderTheLoader: new TextStyle(),
      photoSize: 200.0,
      onClick: () => print("Flutter wigdet"),
      loaderColor: Colors.blueAccent,
    );
  }
}
