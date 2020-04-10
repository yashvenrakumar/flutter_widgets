 
import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class BasicLayoutBuilder extends StatelessWidget {
  //Builds a widget tree that can depend on the parent widget's size.
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
        title: Text("LayoutBuilder Widget")),
      body:  Column(
              children: <Widget>[
                 LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return _buildTwoContainers();
            } else {
              return _buildOneContainer();
            }
          },
        ),


         Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 100, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          }),
        ),



              ],
      ),
    );
  }

  Widget _buildOneContainer() {
    return Center(
      child: Container(
        height: 300.0,
        width: 300.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildTwoContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.red,
          ),
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.blue,
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
  sourceFilePath: 'lib/fluttermultiplelayout/layoutbuilder.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttermultiplelayout/layoutbuilder.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: BasicLayoutBuilder());
    }
  }
 
 