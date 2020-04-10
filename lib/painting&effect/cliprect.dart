import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class Clipreactt extends StatefulWidget {
  @override
  _ClipreacttState createState() => _ClipreacttState();
}

class _ClipreacttState extends State<Clipreactt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar( 
         actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

           })
         ],
          leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
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


class Codeview extends StatefulWidget {
  @override
  _CodeviewState createState() => _CodeviewState();
}

class _CodeviewState extends State<Codeview> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: WidgetWithCodeView(
  child: MyAwesomeWidget(),
  sourceFilePath: 'lib/painting&effect/cliprect.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/painting%26effect/cliprect.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Clipreactt());
    }
  }
 
 