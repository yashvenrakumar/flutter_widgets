import 'package:flutter/material.dart';


import 'package:widget_with_codeview/widget_with_codeview.dart';
class Columnexample extends StatefulWidget {
  @override
  _ColumnexampleState createState() => _ColumnexampleState();
}

class _ColumnexampleState extends State<Columnexample> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


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
      body:  ListView(
        scrollDirection: Axis.vertical,

              children: <Widget>[

                 Column(
          
          children: <Widget>[
            Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),
              
          
                              Container(
           
          height: 100,
           width: MediaQuery.of(context).size.width,
          margin:  EdgeInsets.all( 12),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 30),),

            onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          }),
        ),
             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
              
            ),

            


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),




             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            ),


             Container(
              height: 100,
              margin: EdgeInsets.all( 12),
              color: Colors.blue[200],
            )






            

          ],
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
  sourceFilePath: 'lib/fluttermultiplelayout/column.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttermultiplelayout/column.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Columnexample());
    }
  }
 
 