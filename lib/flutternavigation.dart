import 'package:flutter/material.dart';

import 'fluttnavigatioo/flutterappbar.dart';
import 'fluttnavigatioo/flutterbottomnavogation.dart';
import 'fluttnavigatioo/flutterdrawer.dart';
import 'fluttnavigatioo/fluttermaterialapp.dart';
import 'fluttnavigatioo/flutterscaffold.dart';
import 'fluttnavigatioo/flutterwidgetapp.dart';
import 'fluttnavigatioo/flutttertabbarview.dart';


class Flutternavigation extends StatefulWidget {
  @override
  _FlutternavigationState createState() => _FlutternavigationState();
}

class _FlutternavigationState extends State<Flutternavigation> {
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

                
              title: Text('flutter Navigation ',textAlign: TextAlign.left,style: TextStyle( 
                color: Colors.black,fontSize: 20),),
                 background: Image.network('https://firebasestorage.googleapis.com/v0/b/flutterwithfirebase-9d09c.appspot.com/o/flutter2.png?alt=media&token=cde940ee-2146-4be8-a53a-e5beee31a588'
                , fit: BoxFit.contain,),
          
            ),
      
          ),
              SliverList(delegate: SliverChildListDelegate( [ 
                  
                  
                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Scafflo(),
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
                            
                                  child: Text(  'Flutter Scaffold',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),


                                      RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Appbarexa(),
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
                            
                                  child: Text(  'Flutter AppBar',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),



                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => BottomNavogatio(),
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
                            
                                  child: Text(  'Flutter  BottomNavigationBar',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => TabLayoutDemo(),
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
                            
                                  child: Text(  'Flutter TabBar&TabBarView',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Drawerexmple(),
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
                            
                                  child: Text(  'Flutter Drawer',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),



                     RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Matewidggt(),
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
                            
                                  child: Text(  'Flutter MaterialApp',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




 RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => MyWidgetsApp(),
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
                            
                                  child: Text(  'Flutter WidgetsApp',
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
