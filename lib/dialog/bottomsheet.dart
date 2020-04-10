import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class Bottomsheet extends StatefulWidget {
  @override
  _BottomsheetState createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: AppBar( 
          leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" BottomSheet",style: TextStyle(color: Colors.black),),
         ),
         body: Center(
           child:         Container(
          width: 220,
          height: 50,
         // margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          }),
        ),

         ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          _settingModalBottomSheet(context);
        },
        child: new Icon(Icons.add),
      ),
    );
  }
}


void _settingModalBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            child: new Wrap(
            children: <Widget>[
new ListTile(
            leading: new Icon(Icons.music_note),
            title: new Text('Music'),
            onTap: () => {}          
          ),
          new ListTile(
            leading: new Icon(Icons.videocam),
            title: new Text('Video'),
            onTap: () => {},          
          ),
            ],
          ),
          );
      }
    );
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
  sourceFilePath: 'lib/dialog/bottomsheet.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/dialog/bottomsheet.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Bottomsheet());
    }
  }
 
 