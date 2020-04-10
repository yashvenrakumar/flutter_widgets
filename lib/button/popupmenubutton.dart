import 'package:flutter/material.dart'; 
import 'package:widget_with_codeview/widget_with_codeview.dart';
 class PoPupmenubutton extends StatefulWidget {
   @override
   _PoPupmenubuttonState createState() => _PoPupmenubuttonState();
 }
 
 class _PoPupmenubuttonState extends State<PoPupmenubutton> {
  

  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
        title: new Text("PopUpMenuButtonn",  ),
        actions: <Widget>[
          PopupMenuButton<String>(
            color: Colors.white,
            onSelected: choiceAction,
            itemBuilder: (BuildContext context){
              return Constants.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: new Center(
        child:   Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).push( MaterialPageRoute(builder: (context)=>Codeview()));
          }),
        )
      ),
    );
  }

  void choiceAction(String choice){
    if(choice == Constants.Settings){
      print('Settings');
    }else if(choice == Constants.Subscribe){
      print('Subscribe');
    }else if(choice == Constants.SignOut){
      print('SignOut');
    }
  }
}

class Constants{
  static const String Subscribe = 'Subscribe';
  static const String Settings = 'Settings';
  static const String SignOut = 'Sign out';

  static const List<String> choices = <String>[
    Subscribe,
    Settings,
    SignOut
  ];
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
  sourceFilePath: 'lib/button/popupmenubutton.dart',
  codeLinkPrefix: ' https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/button/popupmenubutton.dart',
      ),
      
    );
  }
}
class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: PoPupmenubutton());
    }
  }