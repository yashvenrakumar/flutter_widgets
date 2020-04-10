import 'package:flutter/material.dart';


import 'package:widget_with_codeview/widget_with_codeview.dart';
class Scrollview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar( 
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
         actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed: (){
                                         Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

           })
         ],
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text("Scrollable",style: TextStyle(color: Colors.black),),
         ),
          body: Container(
              child: new SingleChildScrollView(
                  child: new ConstrainedBox(
        constraints: new BoxConstraints(),
        child: new Column(children: <Widget>[
          new Image.network(
            'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
          ),
          new Container(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
            color: Colors.grey,
            child: new Text(
              'Cast Light life style Here',
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          new Container(
            child: new Text(
                   'Hi There ? this is sample plaid app using flutter sdk and dart programming language, devceloper is Hammad Tariq'
                    
                  'Flutter app SingleChildScrollView Example ',
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
          ),

          Container(
            height: 200,
            color: Colors.orange[200],
            margin: EdgeInsets.all( 12),
          ),

           Container(
            height: 200,
            color: Colors.orange[200],
            margin: EdgeInsets.all( 12),
          ),

           Container(
            height: 200,
            color: Colors.orange[200],
            margin: EdgeInsets.all( 12),
          )
 
 
        ]),
      ))),
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
  sourceFilePath: 'lib/fscrolling/scrollable.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fscrolling/scrollable.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Scrollview());
    }
  }
 
 