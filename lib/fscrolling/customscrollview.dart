import 'package:flutter/material.dart';


import 'package:widget_with_codeview/widget_with_codeview.dart';
class Customscrollview extends StatefulWidget {
  @override
  _CustomscrollviewState createState() => _CustomscrollviewState();
}

class _CustomscrollviewState extends State<Customscrollview> {
  @override

  Widget build(BuildContext context) {
   return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            
            
              backgroundColor: Colors.white,
              elevation: 5, 
            expandedHeight: 200,
            pinned: true,
               leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,), 
               onPressed: (){
                 Navigator.of(context).pop();

              }),
              actions: <Widget>[
                IconButton(icon: Icon( Icons.code, color: Colors.black, size: 40,), 
                onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

                })
                 
              ],
           
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                
              title: Text('customscrollview demo',textAlign: TextAlign.center,style: TextStyle( 
                color: Colors.black,fontSize: 18),
                ),
                background: FlutterLogo(),
                // background: //Image.network('https://firebasestorage.googleapis.com/v0/b/flutterwithfirebase-9d09c.appspot.com/o/fff.png?alt=media&token=326e3c41-664f-462d-b347-cac57f9fc38d'
                // , fit: BoxFit.contain,),
          
            ),
      
          ),
              SliverList(delegate: SliverChildListDelegate( [ 

                

                Container(color: Colors.blue[50],
                height: 100,
                margin: EdgeInsets.all( 12),
                ),

                Container(color: Colors.blue[50],
                height: 100,
                margin: EdgeInsets.all( 12),
                ),
                Container(color: Colors.blue[100],
                height: 100,
                margin: EdgeInsets.all( 12),
                ),

                Container(color: Colors.blue[100],
                height: 100,
                margin: EdgeInsets.all( 12),
                ),

                Container(color: Colors.blue[200],
                height: 100,
                margin: EdgeInsets.all( 12),
                ),

                Container(color: Colors.blue[200],
                height: 100,
                margin: EdgeInsets.all( 12),
                )
                   
             ],
             ),
  
                     ),
                     ],

             
                     )
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
  sourceFilePath: 'lib/fscrolling/customscrollview.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fscrolling/customscrollview.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child:Customscrollview());
    }
  }
 
 