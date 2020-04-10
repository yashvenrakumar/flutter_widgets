import 'package:flutter/material.dart';


import 'package:widget_with_codeview/widget_with_codeview.dart';
class Gridview extends StatefulWidget {
  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
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
           title: Text(" Columnn",style: TextStyle(color: Colors.black),),
         ),

body:GridView.count(crossAxisCount:  2,
crossAxisSpacing: 12,
mainAxisSpacing: 12,

children: <Widget>[

  Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
    
    
  ),

   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),

     RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          }),
        


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),



   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),


   Container(

    color: Colors.blue[200],
    child: Center(
       child: Text(" griewview exa.."),
    ),
   ),



  
],

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
  sourceFilePath: 'lib/fluttermultiplelayout/gridview.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttermultiplelayout/gridview.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Gridview());
    }
  }
 
 