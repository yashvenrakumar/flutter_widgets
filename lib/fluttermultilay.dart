import 'package:flutter/material.dart';

import 'fluttermultiplelayout/column.dart';
import 'fluttermultiplelayout/flow.dart';
import 'fluttermultiplelayout/gridview.dart';
import 'fluttermultiplelayout/indexedstage.dart';
import 'fluttermultiplelayout/layoutbuilder.dart';
import 'fluttermultiplelayout/listview.dart';
import 'fluttermultiplelayout/row.dart';
import 'fluttermultiplelayout/stack.dart';
import 'fluttermultiplelayout/table.dart';
import 'fluttermultiplelayout/wrap.dart';


 class Fluttermultilay extends StatefulWidget {
   @override
   _FluttermultilayState createState() => _FluttermultilayState();
 }
 
 class _FluttermultilayState extends State<Fluttermultilay> {
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

                
              title: Text('flutter MultiLayout ',textAlign: TextAlign.left,style: TextStyle( 
                color: Colors.black,fontSize: 20),),
                 background: Image.network('https://firebasestorage.googleapis.com/v0/b/flutterwithfirebase-9d09c.appspot.com/o/flutter2.png?alt=media&token=cde940ee-2146-4be8-a53a-e5beee31a588'
                , fit: BoxFit.contain,),
          
            ),
      
          ),
              SliverList(delegate: SliverChildListDelegate( [ 
                  
                  
                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Columnexample(),
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
                            
                                  child: Text(  'Flutter Column',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),

 


                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => FlowApp(),
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
                            
                                  child: Text(  'Flutter  Flow',
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
                            
                                  child: Text(  'Flutter GridView',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                   RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Indexedstagge(),
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
                            
                                  child: Text(  'Flutter IndexedStage',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),



                     RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => BasicLayoutBuilder(),
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
                            
                                  child: Text(  'Flutter LayoutBuilder',
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
                            
                                  child: Text(  'Flutter ListView',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                  RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Rowexample(),
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
                            
                                  child: Text(  'Flutter Row',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),




                    RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => StackExample(),
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
                            
                                  child: Text(  'Flutter stack',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),


                                     
                    RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Tableexample(),
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
                            
                                  child: Text(  'Flutter Table',
                                  style: TextStyle(fontSize: 25.0,
                                  fontWeight: FontWeight.bold, color: Colors.black),),
                                ),
                                         ),
                                      
                                     ),


                                         
                    RaisedButton(   
                   onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => Wrapexapmle(),
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
                            
                                  child: Text(  'Flutter Wrap',
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
