import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'flutteranimatio.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart'; 
import 'flutterbutton.dart';
import 'flutterdialo.dart';
import 'fluttermultilay.dart';
import 'flutternavigation.dart';
import 'flutterpainting.dart';
import 'flutterscrolling.dart';
import 'fluttersinglelay.dart';  

import 'messaging/msg.dart';

 

const String testDevice = 'RMX1811';

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

      seconds: 4,
      navigateAfterSeconds: Matedesign(),
      title: new Text('Welcome In flutter Widgets',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
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
      photoSize: 200.0,
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
         centerTitle: true,
         actions: <Widget>[
           IconButton(icon:  Icon( Icons.view_day, color: Colors.black,size: 30,), 
           
           onPressed: (){
           Navigator.of(context).push( MaterialPageRoute(builder:  (context)=>Msg()));


           })
               ],
         elevation:0,
         backgroundColor: Colors.blue[200],
         title: Text("Flutter Widgets",style: TextStyle(
              color: Colors.black,fontSize: 26
           
       ),
         ),
       ),

       body:  ListView(
              scrollDirection: Axis.vertical,        
         children: <Widget>[
               Padding(
                 
                 padding: const EdgeInsets.all(0),
                 child: Container(
                   color: Colors.blue[50],
                   child: Center(
                     child: Text("Flutter material design",style: TextStyle(
                     fontSize: 20, fontWeight: FontWeight.bold
                 ),),
                   ),),
               ),

                       
                Container(
                 
                
                 height: 70,
                 decoration: BoxDecoration(
               

                   border: Border.all(
                     color: Colors.white,
                     width: 5,
                   )
                 ),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                  
                    color: Colors.orange[100],
                    elevation: 5,
                     child: Text("flutter Backend Post ",style: TextStyle(
                   fontSize: 30, fontWeight: FontWeight.bold, color: Colors.orange                ),),
                    onPressed: (){
                     
 
                       

                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Msg(),
                                     ),
                                    );

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
                     child: Text("fluter animation ",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue                ),),
                    onPressed: (){
                     
 
                      //reateInterstitialAd()..load()..show();

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
                 margin: EdgeInsets.all( 10),
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
                      onPressed:  () async => await _shareText(),


                    color: Colors.white,
                    elevation: 5,
                     child: Text("Share it...!!",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue  
                   ),),
            
            ),
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
                     child: Text(" Rating the app",style: TextStyle(
                   fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue  
                   ),),
                    onPressed:  _rate,
                    ),
               ),




                







         ],
       ),
       
        drawer: Drawer(
      
        elevation: 20,
         child:  ListView(
            padding: EdgeInsets.all( 10),
           children: <Widget>[
             UserAccountsDrawerHeader(
               decoration: BoxDecoration(
                 color: Colors.white
               ),
               accountEmail: Text( 'yashvendrajnv95@gamil.com',style: TextStyle(color:Colors.black,fontSize: 16),),
               accountName: Text( 'yashvendra kumar',style: TextStyle(color:Colors.black,fontSize: 18),),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/jeemainadvenced.appspot.com/o/yash.png?alt=media&token=73602a58-ade9-4732-9c89-0176373059b5'),
               )
                
             
                  
             ),
             Divider(
               height: 10,
               color: Colors.lightBlueAccent,
             ),

              Container(
              margin: EdgeInsets.all( 5),
              
           width: MediaQuery.of(context).size.width,
           height: 70,
           child: RaisedButton(
              color: Colors.orange[100],
             elevation: 10,
              onPressed: () {
                   
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Msg(),
                                     ),
                                    );
                                   },
 
            child: ListTile(
              leading: FlutterLogo(size: 40,),
              title:  Text( " flutter backend ",style: TextStyle(fontSize:20,color: Colors.black),)
            ),
            //  child: Center(
            //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),
              
            //  ),
           ),
            ),

           
            Container(
              margin: EdgeInsets.all( 5),
              
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: RaisedButton(
              color: Colors.white,
             elevation: 10,
              onPressed: () {
                   
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => MyWebView(
                                 title: " flutter official wabsite ",
                                 //selectedUrl: "https://pub.dev/packages/firebase_storage",
                                  
                               selectedUrl: "https://flutter.dev/docs/development/ui/widgets",
                                        ),
                                     ),
                                    );
                                   },
 
            child: ListTile(
              leading: FlutterLogo(size: 40,),
              title:  Text( " flutter official ",style: TextStyle(fontSize:20,color: Colors.black),)
            ),
            //  child: Center(
            //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),
              
            //  ),
           ),
            ),

             Container(
              margin: EdgeInsets.all( 5),
              
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: RaisedButton(
              color: Colors.white,
             elevation: 10,
              onPressed: () {
                                       

                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => MyWebView(
                                 title: " flutter youtube ",
                                 //selectedUrl: "https://pub.dev/packages/firebase_storage",
                                  
                               selectedUrl: "https://www.youtube.com/flutterdev",
                                        ),
                                     ),
                                    );
                                   },
 
              child: ListTile(
              leading: Icon(Icons.video_library,color: Colors.redAccent,size: 35,),
              title:  Text( "flutter youtube",style: TextStyle(fontSize:20,color: Colors.black),)
            ),
           ),
            ),
             Container(
              margin: EdgeInsets.all( 5),
              
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: RaisedButton(
              color: Colors.white,
             elevation: 10,
              onPressed: () {
                                        

                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => MyWebView(
                                 title: " flutter github ",
                                 //selectedUrl: "https://pub.dev/packages/firebase_storage",
                                  
                               selectedUrl: "https://github.com/flutter",
                                        ),
                                     ),
                                    );
                                   },
 
              child: ListTile(
              leading: Icon(Icons.desktop_windows,color: Colors.black,size: 30,),
              title:  Text( "github",style: TextStyle(fontSize:20,color: Colors.black),)
            ),
           ),
            ),
             Container(
              margin: EdgeInsets.all( 5),
              
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: RaisedButton(
              color: Colors.white,
             elevation: 10,
             onPressed: () {
                                       

                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => MyWebView(
                                 title: " flutter twitter",
                                 //selectedUrl: "https://pub.dev/packages/firebase_storage",
                                  
                               selectedUrl: "https://twitter.com/flutterdev",
                                        ),
                                     ),
                                    );
                                   },
 
               child: ListTile(
              leading: Icon(Icons.insert_link,color: Colors.blueAccent,size: 30,),
              title:  Text( "flutter twitter",style: TextStyle(fontSize:20,color: Colors.black),)
            ),
           ),
            ),
             Container(
              margin: EdgeInsets.all( 5),
              
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: RaisedButton(
             color: Colors.white,
             elevation: 10,
             onPressed: () {
                                      

                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => MyWebView(
                                 title: " flutter package ",
                                 //selectedUrl: "https://pub.dev/packages/firebase_storage",
                                  
                               selectedUrl: " https://pub.dev/flutter/packages",
                                        ),
                                     ),
                                    );
                                   },
 
               child: ListTile(
              leading: FlutterLogo(size: 40,),
              title:Text( "flutter package",style: TextStyle(fontSize:20,color: Colors.black),
              
              ),
             ),
           ),
            ),

           
            
            
             Container(
              margin: EdgeInsets.all( 5),
              
           width: MediaQuery.of(context).size.width,
           height: 100,
           child:RaisedButton( 
              color: Colors.white,
             elevation: 10,
            
             onPressed:  _rate,
             child: Center(
               child: Text( "rate us app **",style: TextStyle(fontSize:30,color: Colors.black),),
              
             ),
           ),
            ),

               
             Container(
              margin: EdgeInsets.all( 5),
              
           width: MediaQuery.of(context).size.width,
           height: 100,
           child:RaisedButton( 
              color: Colors.white,
             elevation: 10,
            
             onPressed: () async => await _shareText(),
             child:  ListTile(
               trailing: Icon(Icons.share,color: Colors.black,size: 45,),
               title: Text( "plz share the app",style: TextStyle(fontSize:30,color: Colors.black),),
              
             ),
           ),
            ),

           ],
         ),
      ),


       floatingActionButton: FloatingActionButton.extended(
         label: Text(' firebase'),
         backgroundColor: Colors.orangeAccent,
         elevation: 10,
         focusColor: Colors.orange[100],
          //icon: Icon(icon),
        onPressed: (){
          Navigator.of(context).pop();
        },
        
        
      ),

     );
   }
 }









 
class MyWebView extends StatelessWidget {
  final String title;+
  final String selectedUrl;
 
  final Completer<WebViewController> _controller = Completer<WebViewController>();
      
  MyWebView({
    @required this.title,
    @required this.selectedUrl,
  });

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

               body:   SafeArea(
              child:   WebView(
            initialUrl: selectedUrl,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
          ), 
        ) ,
       
        
        );
  }


}



Future<void> _shareText() async {
    try {
      Share.text('flutter all widgets',
          'flutter all widgets https://play.google.com/store/apps/details?id=com.yashoo.flutterallwidgets', 'text/plain');
    } catch (e) {
      print('error: $e');
    }
  }










_rate() async {
  const url = 'https://play.google.com/store/apps/details?id=com.yashoo.flutterallwidgets';
  if ((url) != null) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

