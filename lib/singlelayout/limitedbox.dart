import 'dart:math';

import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
 
class BasicLimitedBox extends StatefulWidget {
  @override
  _BasicLimitedBoxState createState() => _BasicLimitedBoxState();
}

class _BasicLimitedBoxState extends State<BasicLimitedBox> {
  final length = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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

         backgroundColor: Colors.white,
         title: Text("Limitedbox",style: TextStyle(
        color: Colors.black,
      ),)),
        
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: length,
          itemBuilder: (BuildContext context, int index) {
            return LimitedBox(
                maxHeight: 200,  
                  child: Container(
                    margin: EdgeInsets.all( 12),
                  color: UniqueColorGenerator.getColor(),
                ),
              );
          }
        )
      ),
    );
  }
}

class UniqueColorGenerator {
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
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
  sourceFilePath: 'lib/singlelayout/limitedbox.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/limitedbox.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: BasicLimitedBox());
    }
  }
 
 