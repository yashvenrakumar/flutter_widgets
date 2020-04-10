import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class BasicSizedBox extends StatelessWidget {
  //A box with a specified size
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
        title: Text("SizedBox Widget")),
      //the sizedBox widget forces its child to have a specific width and/or height (if that widget permits that)
      //if it doesnt contain a child, it will size itself to the given width and height
      //can also use SizedBox.expand(), which stes with and height to infinity
      //or SizedBox.fromSize() which requires a Size class

      body:Container(
  width: 200.0,
  height: 200.0,
  color: Colors.blue[50],
  child: Align(
    alignment: const Alignment(1.0, 1.0),
    child: SizedBox(
      width: 10.0,
      height: 20.0,
      child: OverflowBox(
        minWidth: 0.0,
        maxWidth: 100.0,
        minHeight: 0.0,
        maxHeight: 50.0,
        child: Container(
          color: Colors.blue,
        ),
      ),
    ),
  ),
)
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
  sourceFilePath: 'lib/singlelayout/sizebox.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/sizebox.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: BasicSizedBox());
    }
  }
 
 