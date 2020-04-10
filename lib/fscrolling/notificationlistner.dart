import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class Notificationlist extends StatefulWidget {
  @override
  _NotificationlistState createState() => _NotificationlistState();
}

class _NotificationlistState extends State<Notificationlist> {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < 100; i++) list.add(buildContainer());
    return Scaffold(
     appBar: AppBar( 

       actions: <Widget>[
          IconButton(icon:   Icon( Icons.code, size:30,color: Colors.black
          ,), onPressed: (){
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
           title: Text(" notificationlistner",style: TextStyle(color: Colors.black),),
         ),
        body: ListView(children: list));
  }

  Widget buildContainer() {
    ScrollController _scrollController = ScrollController();

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollState) {
        if (scrollState is ScrollEndNotification && scrollState.metrics.pixels != 160) {
          Future.delayed(const Duration(milliseconds: 100), () {}).then((s) {
            _scrollController.animateTo(160,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          });
        }
        return false;
      },
      child: Container(
        height: 160,
        margin: EdgeInsets.only(bottom: 1),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          children: <Widget>[
            Container(
              width: 300,
              height: 120,
              color: Colors.red,
            ),
            Container(
              width: 160,
              height: 20,
              color: Colors.blue,
            ),
          ],
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
  sourceFilePath: 'lib/fscrolling/notificationlistner.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fscrolling/notificationlistner.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Notificationlist());
    }
  }
 
 