import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluwigets/flutterbutton.dart';
import 'package:fluwigets/flutterdialo.dart';
//import 'package:fluwigets/flutterinformatio.dart';
import 'package:fluwigets/fluttermultilay.dart';
import 'package:fluwigets/flutternavigation.dart';
import 'package:fluwigets/flutterpainting.dart';
import 'package:fluwigets/flutterscrolling.dart';
import 'package:fluwigets/fluttersinglelay.dart';
import 'package:splashscreen/splashscreen.dart';
import 'flutteranimatio.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: MyAppa(),
       debugShowCheckedModeBanner: false,
      
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

      seconds: 10,
      navigateAfterSeconds: Matedesign(),
      title: new Text('Welcome In flutter Widgets',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 27.0
        ),
      ),
    

      image: new Image.network('https://firebasestorage.googleapis.com/v0/b/flutterwithfirebase-9d09c.appspot.com/o/flutter2.png?alt=media&token=cde940ee-2146-4be8-a53a-e5beee31a588'),
      backgroundColor: Colors.white,
      

      gradientBackground: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                            colors: [Colors.blue[500], 
                             Colors.white
                                           ]
                                                      ),
     // styleTextUnderTheLoader: new TextStyle(),
      photoSize: 210.0,
      onClick: ()=>print("Flutter wigdet"),
      loaderColor: Colors.blueAccent,
    );
  }
}

 


 class Matedesign extends StatefulWidget {
   @override
   _MatedesignState createState() => _MatedesignState();
 }
 
 class _MatedesignState extends State<Matedesign> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: FlutterLogo(),
         elevation:0,
         backgroundColor: Colors.white,
         title: Text("   flutter gallery",style: TextStyle(
              color: Colors.black,fontSize: 26
           
       ),
         ),
       ),

       body:  ListView(
              scrollDirection: Axis.vertical,        
         children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(12),
                 child: Center(child: Text("Flutter material design",style: TextStyle(
                   fontSize: 20, fontWeight: FontWeight.bold
                 ),),),
               ),
              
                Container(
                 
                 margin: EdgeInsets.all( 12),
                 height: 130,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 5,
                   )
                 ),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                     child: Text("fluter animation ",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue                ),),
                    onPressed: (){

                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => FlutterAnimatio(),
                                     ),
                                    );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                  }),
               ),


                Container(
                 
                 margin: EdgeInsets.all( 12),
                 height: 130,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 5,
                   )
                 ),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                     child: Text("flutter painting & effects",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue                ),),
                    onPressed: (){

                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => FlutterPainting(),
                                     ),
                                    );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                  }),
               ),

                Container(
                 
                 height: 130,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 5,
                   )
                 ),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                     child: Text("flutter scrolling",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue                )),
                    onPressed: (){

                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Flutterscrolling(),
                                     ),
                                    );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                  }),
               ),


                Container(
                 
                 margin: EdgeInsets.all( 12),
                 height: 130,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 5,
                   )
                 ),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                     child: Text("flutter single layout",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue           ),),
                    onPressed: (){

                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Fluttersinglelay(),
                                     ),
                                    );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                  }),
               ),


                Container(
                 
                 margin: EdgeInsets.all( 12),
                 height: 130,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 5,
                   )
                 ),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                     child: Text("flutter multiple layout",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue         ),),
                    onPressed: (){

                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Fluttermultilay(),
                                     ),
                                    );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                  }),
               ),


              //   Container(
                 
              //    margin: EdgeInsets.all( 12),
              //    height: 130,
              //    decoration: BoxDecoration(
              //      border: Border.all(
              //        color: Colors.white,
              //        width: 5,
              //      )
              //    ),
              //     width: MediaQuery.of(context).size.width,
              //     child: RaisedButton(
              //       color: Colors.white,
              //       elevation: 5,
              //        child: Text("flutter information",style: TextStyle(
              //      fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue    ),),
              //       onPressed: (){

              //        Navigator.of(context).push(MaterialPageRoute(
              //          builder: (BuildContext context) => Flutterinformation(),
              //                        ),
              //                       );

              //     //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
              //     }),
              //  ),


                Container(
                 
                 margin: EdgeInsets.all( 12),
                 height: 130,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 5,
                   )
                 ),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                     child: Text("flutter dialog",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue   
                   ),),
                    onPressed: (){

                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) =>  Flutterdialog(),
                                     ),
                                    );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                  }),
               ),


                Container(
                 
                 margin: EdgeInsets.all( 12),
                 height: 130,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 5,
                   )
                 ),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                     child: Text("flutter button",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue    
                   )
                   ,),
                    onPressed: (){

                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Flutterbuttonn(),
                                     ),
                                    );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                  }),
               ),


                Container(
                 
                 margin: EdgeInsets.all( 12),
                 height: 130,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 5,
                   )
                 ),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                     child: Text(" flutter navigation",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue  
                   ),),
                    onPressed: (){

                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Flutternavigation(),
                                     ),
                                    );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                  }),
               ),


                







         ],
       )
     );
   }
 }