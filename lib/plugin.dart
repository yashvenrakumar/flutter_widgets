 

import 'package:flutter/foundation.dart'; 
import 'package:flutter/material.dart'; 
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:firebase_admob/firebase_admob.dart';
class Plu extends StatefulWidget {
  @override
  _PluState createState() => _PluState();
}

class _PluState extends State<Plu> {
   @override
    Widget build(BuildContext context) {

    
   final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
    testDevices: <String>[],
    keywords: <String>['software','web development','app development','java ', 'python','machine learning' ,'data science','robotics','mathematics','physics','technology','college' 'microsoft'],
   
    childDirected: true,
    nonPersonalizedAds: true,
    
    
  );


  // ignore: unused_local_variable
  BannerAd _bannerAd;
  // ignore: unused_local_variable
  InterstitialAd _interstitialAd;
 

  BannerAd createBannerAd() {
    return new BannerAd(
        adUnitId: "ca-app-pub-3032113909807052/1268587433",
        size: AdSize.banner,
        targetingInfo: targetInfo,
        listener: (MobileAdEvent event) { 
          print("Banner event : $event");
        });
  }

  InterstitialAd createInterstitialAd() {
    return new InterstitialAd(
        adUnitId: "ca-app-pub-3032113909807052/7043017665",
        targetingInfo: targetInfo,
        listener: (MobileAdEvent event) {
          print("Interstitial event : $event");
        });
  }

   @override
  // ignore: unused_element
  void initState() {
      
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-3032113909807052~8795083036");
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    
  }




      return  Scaffold(       
      body:  SafeArea(
              child: CustomScrollView(
        scrollDirection: Axis.vertical,
         primary: true,
         
         slivers: <Widget>[
           
           SliverAppBar(
             backgroundColor: Colors.blue[50],
            
             iconTheme: IconThemeData( color: Colors.black),
             expandedHeight: 210,
             centerTitle: true,
             title: Text('essential plugin',style: TextStyle(color: Colors.black),),
          
               flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        
                        background: Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Ff2%20-%20Copy.png?alt=media&token=f52ac5b5-6885-42a6-af40-1fa9d5f3db66",
                          fit: BoxFit.fill,
                        )),

           ),
           SliverList( 
                delegate: SliverChildListDelegate([
              
              Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 180,
                        child: Center(child: Text("Plugin |", style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),))),
                      
                      Container(
                        width: 100,
                        child: Center(child: Text("Github |", style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),))),
                          
                      Container(
                        width: 100,
                        child: Center(child: Text("Dart ", style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),))),
    

                    ],
                  ),

              ],),),
              Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("android_alarm_manage ",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                 
                                     onPressed: () {
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " an al ma",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/android_alarm_manager/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                 
                                      onPressed: () {
                                        
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " alarm ",
                          
                                 selectedUrl: "https://pub.dev/packages/android_alarm_manager",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),



                          Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("android_intent  ",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                 
                                            onPressed: () {
                                               
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " intent",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/android_intent/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                        onPressed: () {
                                           
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " intent ",
                          
                                 selectedUrl: "https://pub.dev/packages/android_intent",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),


                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("battery",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                         onPressed: () {
                                           
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  battery ",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/battery/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " battery ",
                          
                                 selectedUrl: "https://pub.dev/packages/battery",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),


                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text(" Camera",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  camera",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/camera/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                 
                                            onPressed: () {
                                               
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  camera",
                          
                                 selectedUrl: "https://pub.dev/packages/camera",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),




                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("connectivity ",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " cannectivity",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/connectivity/connectivity/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " connectivity ",
                          
                                 selectedUrl: "https://pub.dev/packages/connectivity",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),

                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("device_info",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  device info ",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/device_info/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  device innfo ",
                          
                                 selectedUrl: "https://pub.dev/packages/device_info",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),

                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("google_maps_flutter",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  gmap",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/google_maps_flutter/google_maps_flutter/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " gmap",
                          
                                 selectedUrl: "https://pub.dev/packages/google_maps_flutter",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),


                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("google_sign_in",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " signin",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/google_sign_in/google_sign_in/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " signin",
                          
                                 selectedUrl: "https://pub.dev/packages/google_sign_in",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),


                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("image_picker",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  image",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/image_picker/image_picker/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " image",
                          
                                 selectedUrl: "https://pub.dev/packages/image_picker",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),


                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("in_app_purchase ",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " inapu",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/in_app_purchase/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " inapu ",
                          
                                 selectedUrl: "https://pub.dev/packages/in_app_purchase",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),




                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("local_auth",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  lauth ",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/local_auth/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " lauth",
                          
                                 selectedUrl: "https://pub.dev/packages/local_auth",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),




                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("package_info",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  pinfoo",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/package_info/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  painfo ",
                          
                                 selectedUrl: "https://pub.dev/packages/package_info",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),



                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("path_provider",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " pprovider ",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/path_provider/path_provider/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                         onPressed: () {
                                            
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  pprovider ",
                          
                                 selectedUrl: "https://pub.dev/packages/path_provider",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),




                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("quick_actions ",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " qaction ",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/quick_actions/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  qaction",
                          
                                 selectedUrl: "https://pub.dev/packages/quick_actions",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),


                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("sensors",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  se ",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/sensors/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " se",
                          
                                 selectedUrl: "https://pub.dev/packages/sensors",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),




                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("share",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " share",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/share/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " share",
                          
                                 selectedUrl: "https://pub.dev/packages/share",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),



                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("shared_preferences",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " prefe",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/shared_preferences/shared_preferences/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                          onPressed: () {
                                            
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  prefe",
                          
                                 selectedUrl: "https://pub.dev/packages/shared_preferences",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),




                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("url_launcher",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  ulau",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/url_launcher/url_launcher/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                              
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "ulau ",
                          
                                 selectedUrl: "https://pub.dev/packages/url_launcher",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),




                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("video_player ",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " vplayer ",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/video_player/video_player/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                         onPressed: () {
                                            
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " vplayer ",
                          
                                 selectedUrl: "https://pub.dev/packages/video_player",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),



                            Container(
                width: 500,
                height: 20,
                child: SizedBox(child: Text("_______________________________________________________________________________"),)),

              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           width: 170,
                           child: Center(child: Text("webview_flutter ",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ),),),
                         ),
                    
                          FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: "  webview ",
                          
                                 selectedUrl: "https://github.com/flutter/plugins/tree/master/packages/webview_flutter/example",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fgitlogo.png?alt=media&token=e4eb0762-af74-4ce3-b3cb-916b136be962 ')
                                 ),
                           ),
                            
                       FlatButton(
                                           onPressed: () {
                                             
                                       createInterstitialAd()..load()..show();
                         Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " webview ",
                          
                                 selectedUrl: "https://pub.dev/packages/webview_flutter",
                                          ),
                                       ),
                                      );
                                     },
                                  child: CircleAvatar(
                                       backgroundColor: Colors.blue[50],
                                   radius: 35,
                                   backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/flutterwidgets-7a9da.appspot.com/o/flutter%2Fdartlogo.png?alt=media&token=dc5f03d3-1ab9-4be2-a4e4-30a3bd289d18 ')
                                 ),
                           ),
                            
                              


                       ],
                     )
                  ],
                ),),



 








              ]),
           )

 
         ],
         

     ),
      ),

      );
    }
  }


 


class MyWebView extends StatelessWidget {
  final String title;
  final String selectedUrl;      
  MyWebView({
    @required this.title,
    @required this.selectedUrl,
  });
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
          body:  SafeArea(
                      child: WebviewScaffold(  
                   
                 url: selectedUrl,
                  withJavascript: true, 
              withZoom: true, 
              hidden: true ,
                initialChild:  Container(
                  child: Center(
                    child:  Column(children: <Widget>[
                      SizedBox(height: 350,),
                      Image.asset(" assets/load.gif"),
                      SizedBox(height: 20,),

                      Text(" waiting.....", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                    ],),
                  ),
                )
            ),
          ),
    );
  }
}
