import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
 
class RowsAndColumns extends StatelessWidget {
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
         backgroundColor: Colors.white,
         title: Text("intrinsicheight",style: TextStyle(
        color: Colors.black,
      ),)),
          body:  Container(
            margin: EdgeInsets.fromLTRB( 0, 100,0,0),
                      child: IntrinsicHeight(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(flex: 1, child: Container(color: Colors.amber)),
              Expanded(
                flex: 2,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Wrap(
                    spacing: 10,
                    runSpacing: 5,
                    children: <Widget>[
                      Container(height: 40.0, width: 130.0, color: Colors.purple),
                      Container(height: 40.0, width: 140.0, color: Colors.red),
                    ],
                  ),
                ]),
              ),
            ],
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
  sourceFilePath: 'lib/singlelayout/intrinsicheight.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/intrinsicheight.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: RowsAndColumns());
    }
  }
 
 