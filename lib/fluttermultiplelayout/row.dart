import 'package:flutter/material.dart';


import 'package:widget_with_codeview/widget_with_codeview.dart';

class Rowexample extends StatefulWidget {
  @override
  _RowexampleState createState() => _RowexampleState();
}

class _RowexampleState extends State<Rowexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: AppBar( 
         actions: <Widget>[
           IconButton(icon:  Icon( Icons.code,size: 30,color: Colors.black,),
            onPressed:(){
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
           title: Text(" Row example",style: TextStyle(color: Colors.black),),
         ),
      body: Column(
        
        children: <Widget>[

            ListTile(
                      trailing: Icon( Icons.arrow_forward_ios),
                            ),
          Container(
            width:MediaQuery.of(context).size.width,
            height: 300,
            child:  ListView(
              scrollDirection: Axis.horizontal,
                          children: <Widget>[
                          

                            Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    color: Colors.blue[200],
                    margin: EdgeInsets.all( 12),
                  ),


                  Container(
                    width: 100,
                    color: Colors.blue[200],
                    margin: EdgeInsets.all( 12),
                  ),



                  Container(
                    width: 100,
                    color: Colors.blue[200],
                    margin: EdgeInsets.all( 12),
                  ),

                  Container(
                    width: 100,
                    color: Colors.blue[200],
                    margin: EdgeInsets.all( 12),
                  ),


                  Container(
                    width: 100,
                    color: Colors.blue[200],
                    margin: EdgeInsets.all( 12),
                  ),

                  Container(
                    width: 100,
                    color: Colors.blue[200],
                    margin: EdgeInsets.all( 12),
                  ),
 
 
 
 
 
                ],
              ),
                          ],
            ),

            
          ),



           Container(
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 100, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).pop();
          }),
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
  sourceFilePath: 'lib/fluttermultiplelayout/row.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttermultiplelayout/row.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Rowexample());
    }
  }
 
 