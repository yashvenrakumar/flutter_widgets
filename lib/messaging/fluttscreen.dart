import 'dart:async';

import 'package:flutter/material.dart'; 
import 'package:webview_flutter/webview_flutter.dart'; 


class FullScreenImagePage extends StatefulWidget {
  String imgPath;
   String name;
 String tagg;
  String link;
   String title;

 
  FullScreenImagePage(this.imgPath,this.link,this.name,this.tagg,this.title);

  @override
  _FullScreenImagePageState createState() => _FullScreenImagePageState();
}

class _FullScreenImagePageState extends State<FullScreenImagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: ListView(
           children: [
              Stack(

               children:     <Widget>[
    
                 Container(
    
                   color: Colors.blue[100],
    
                   height: 180,
    
                    
    
                   child: Image.network( widget.imgPath, fit: BoxFit.fill,),
    
                 ),
                 Align(
                   alignment: Alignment.center,
                   child: Container(
                     margin: EdgeInsets.fromLTRB( 0, 50, 0, 0),
                     child: CircleAvatar(
                       radius: 50,
                       backgroundImage: NetworkImage(widget.tagg),
                     ),
                   ),
                 )
    
                 
    
               ],
               ),
                   SizedBox( height: 40,child: Container(
                     color: Colors.orange[50],
                     child: Center(child: Text(' Description',style: TextStyle(fontSize: 25,color: Colors.black
                     ,fontWeight: FontWeight.bold, ),))),)
                   ,Container(
                     height: 370,
                                         
                     width: MediaQuery.of(context).size.width,
                     color: Colors.blue[50],

                     child: Center( child: Text(widget.name, style: TextStyle(color: Colors.black
                    , fontSize: 20, fontWeight: FontWeight.bold ),)),
                   ),
                SizedBox(height: 20,),

                       Container(
                         margin: EdgeInsets.all( 10),
                         height: 80,
                         child: FlatButton(
                           color: Colors.blue[100],
                           onPressed: (){
                          

                                Navigator.of(context).push(MaterialPageRoute(
                         builder: (BuildContext context) => MyWebView(
                                   title: " flutter package ",
                                   //selectedUrl: "https://pub.dev/packages/firebase_storage",
                                    
                                 selectedUrl: widget.link,
                                          ),
                                       ),
                                      );
                                      
                         },
                         
                          child: Container(
                           child: Center(child: Text(' click here to read Post...',
                           style: TextStyle(fontSize: 25,color: Colors.black
                     ,fontWeight: FontWeight.bold,),))
                         )),
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
        floatingActionButton: FloatingActionButton(onPressed: (){
              
          Navigator.of(context).pop();
        },
        child: Icon( Icons.arrow_back,color: Colors.black,),
        
      ),
        
        );
  }


}
