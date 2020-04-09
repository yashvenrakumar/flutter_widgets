import 'package:flutter/material.dart';
 
  

  class Singllechildscrollview extends StatefulWidget {
    @override
    _SingllechildscrollviewState createState() => _SingllechildscrollviewState();
  }
  
  class _SingllechildscrollviewState extends State<Singllechildscrollview> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( 
         actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed: null)
         ],
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Singlechildscrollview ",style: TextStyle(color: Colors.black),),
         ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 190,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  //decoration: decoration,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  //decoration: decoration,
                ),
                SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  color: Colors.red,
                  minWidth: 160,
                  child: Text(
                    'Google',
                   // style: textstyle,
                  ), onPressed: () {},
                ),
                MaterialButton(
                  color: Colors.blue,
                  minWidth: 160,
                  child: Text(
                    'Facebook',
                   // style: textstyle,
                  ), onPressed: () {},
                ),
                MaterialButton(
                  color: Colors.orange,
                  minWidth: 160,
                  child: Text(
                    'E-mail',
                    //style: textstyle,
                  ), onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
