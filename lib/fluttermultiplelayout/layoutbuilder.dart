 
import 'package:flutter/material.dart';

class BasicLayoutBuilder extends StatelessWidget {
  //Builds a widget tree that can depend on the parent widget's size.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LayoutBuilder Widget")),
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
            Navigator.of(context).pop();
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
