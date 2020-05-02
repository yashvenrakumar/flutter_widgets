import 'package:flutter/material.dart';
import 'painting&effect/backbropfilter.dart';
import 'painting&effect/clipoval.dart';
import 'painting&effect/clippath.dart';
import 'painting&effect/cliprect.dart';
import 'painting&effect/custompaint.dart';
import 'painting&effect/decoratedbox.dart';
import 'painting&effect/opacity.dart';

class FlutterPainting extends StatefulWidget {
  @override
  _FlutterPaintingState createState() => _FlutterPaintingState();
}

class _FlutterPaintingState extends State<FlutterPainting> {
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
                       centerTitle: true,
                
              title: Text('flutter Painting & Effect ',textAlign: TextAlign.left,style: TextStyle( 
                color: Colors.black,fontSize: 20),),
                 background: Image.network('https://firebasestorage.googleapis.com/v0/b/flutterwithfirebase-9d09c.appspot.com/o/flutter2.png?alt=media&token=cde940ee-2146-4be8-a53a-e5beee31a588'
                , fit: BoxFit.contain,),
          
            ),
      
          ),
              SliverList(delegate: SliverChildListDelegate( [ 
                  
                  
                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => FrostedDemo(),
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
                            
                                  child: Text(  'Flutter BackDropFilter',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),


                                      RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Cliovall(),
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
                            
                                  child: Text(  'Flutter ClipOval',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),



                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Clippathh(),
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
                            
                                  child: Text(  'Flutter  ClipPath',
                                style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Clipreactt(),
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
                            
                                  child: Text(  'Flutter ClipRect',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => TopBar(),
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
                            
                                  child: Text(  'Flutter CustomPaint',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),



                     RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Decoratedboxx(),
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
                            
                                  child: Text(  'Flutter DecoratedBox',
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
                            
                                  child: Text(  'Flutter FractionalTransition',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                  RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Opacityy(),
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
                            
                                  child: Text(  'Flutter Opacity',
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
