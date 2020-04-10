import 'package:flutter/material.dart';

import 'fluttermultiplelayout/gridview.dart';
import 'fscrolling/customscrollview.dart';
import 'fscrolling/listview.dart';
import 'fscrolling/nestedscrollview.dart';
import 'fscrolling/notificationlistner.dart';
import 'fscrolling/pageview.dart';
import 'fscrolling/scrollable.dart';
import 'fscrolling/scrollbar.dart';
import 'fscrolling/singlechildscrollview.dart';

class Flutterscrolling extends StatefulWidget {
  @override
  _FlutterscrollingState createState() => _FlutterscrollingState();
}

class _FlutterscrollingState extends State<Flutterscrolling> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
       
      body: CustomScrollView(
        
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(icon:  Icon( Icons.arrow_back,color: Colors.black,), onPressed: (){
              Navigator.of(context).pop();
            }),
            
              backgroundColor: Colors.white,
              elevation: 0, 
             expandedHeight: 200,
             pinned: true,
               
           
              flexibleSpace: FlexibleSpaceBar(

                
              title: Text('flutter Scrolling',textAlign: TextAlign.left,style: TextStyle( 
                color: Colors.black,fontSize: 20),),
                 background: Image.network('https://firebasestorage.googleapis.com/v0/b/flutterwithfirebase-9d09c.appspot.com/o/flutter2.png?alt=media&token=cde940ee-2146-4be8-a53a-e5beee31a588'
                , fit: BoxFit.contain,),
          
            ),
      
          ),
              SliverList(delegate: SliverChildListDelegate( [ 
                  
                  
                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Customscrollview(),
                                     ),
                                    );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter CustomScrollView',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),


                                      RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Gridview(),
                                     ),
                                    );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter  GridView',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),



                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Listvieww(),
                                     ),
                                    );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter  ListView',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Nestedscroll(),
                                     ),
                                    );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter NestedScrollView ',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Notificationlist(),
                                     ),
                                    );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter NotificationListner',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),



                     RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Pageview(),
                                     ),
                                    );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter PageView',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




 RaisedButton(   
                   onPressed: () {
                      //  Navigator.of(context).push(MaterialPageRoute(
                      //  builder: (BuildContext context) => MyWebView(
                      //            title: "Firebase Crashlytics",
                      //          selectedUrl: "https://pub.dev/packages/firebase_crashlytics",
                      //                   ),
                      //                ),
                      //               );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter RefreshIndicator',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                  RaisedButton(   
                   onPressed: () {
                      //  Navigator.of(context).push(MaterialPageRoute(
                      //  builder: (BuildContext context) => MyWebView(
                      //            title: "Firebase Realtime Database",
                      //          selectedUrl: "https://pub.dev/packages/firebase_database",
                      //                   ),
                      //                ),
                      //               );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter ScrollConfiguratiion',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                  RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Scrollview(),
                                     ),
                                    );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter Scrollabe',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                    RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Scrollbarr(),
                                     ),
                                    );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter Scrollbar',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Singllechildscrollview(),
                                     ),
                                    );
                                   },
                              child: Container(
                              
                                margin: EdgeInsets.fromLTRB( 0, 10, 0, 0),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                                   gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                     end: Alignment.bottomRight,
                                                      colors: [Colors.blue[100], 
                                                      Colors.white
                                                      ]
                                                      )
                                                      ),
                              
                                                        child: Align(
                                                          alignment: Alignment.center,
                            
                                  child: Text(  'Flutter SingleChildScrollView',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),


 
                       
  
             ],
             ),
   
 
           
        
                     ),
                     ],

             
                     )
             );
    
  }

}
