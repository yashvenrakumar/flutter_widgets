import 'package:flutter/material.dart';



class Rowexample extends StatefulWidget {
  @override
  _RowexampleState createState() => _RowexampleState();
}

class _RowexampleState extends State<Rowexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar( 
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