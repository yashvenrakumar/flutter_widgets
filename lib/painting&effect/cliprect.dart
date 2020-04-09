import 'package:flutter/material.dart';

class Clipreactt extends StatefulWidget {
  @override
  _ClipreacttState createState() => _ClipreacttState();
}

class _ClipreacttState extends State<Clipreactt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Cliprect",style: TextStyle(color: Colors.black),),
         ),
      body: new Center(
	child: new RepaintBoundary(
	  child: new Container(
	    color: Colors.amber,
            child: new Padding(
              padding: const EdgeInsets.all(100.0),
              child: new SizedBox(
		height: 100.0,
                width: 100.0,
                child: new Transform.rotate(
	          angle: 1.0, // radians                                                                                        
	          child: new ClipRect(
                    child: new Container(
                      color: Colors.red,
                      child: new Container(
                        //color: Colors.white,
                        child: new RepaintBoundary(
                          child: new Center(
                            child: new Container(
                              color: Colors.black,
                              height: 10.0,
	                      width: 10.0,
                            ),
                          ),
                        ),
                      ),  
                    ),
                  ),
	        ),
	      ),
            ),
          ),
	),
      ),
      
    );
  }
}