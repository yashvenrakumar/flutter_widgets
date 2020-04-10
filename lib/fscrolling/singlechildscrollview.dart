import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

  class Singllechildscrollview extends StatefulWidget {
    @override
    _SingllechildscrollviewState createState() => _SingllechildscrollviewState();
  }
  
  class _SingllechildscrollviewState extends State<Singllechildscrollview> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
  sourceFilePath: 'lib/fscrolling/singlechildscrollview.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fscrolling/singlechildscrollview.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Singllechildscrollview());
    }
  }
 
 