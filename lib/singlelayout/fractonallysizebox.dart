 


import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class BasicFractionallySizedBox extends StatelessWidget {
  //A widget that sizes its child to a fraction of the total available space
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
         backgroundColor: Colors.white,
         title: Text("FractionallySizedBox Widget",style: TextStyle(
        color: Colors.black,
      ),)),
      body: Row(
      children: <Widget>[
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              width: 200,
              
              margin: EdgeInsets.only(right: 5),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
      ),
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height:100,

                    width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
      ),
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 100,

                    width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
      ),
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 100,
                    width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
      ),
      Flexible(
        child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 100,
                    width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(125)),
              ),
            )
        ),
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
  sourceFilePath: 'lib/singlelayout/fractonallysizebox.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/fractonallysizebox.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: BasicFractionallySizedBox());
    }
  }
 
 