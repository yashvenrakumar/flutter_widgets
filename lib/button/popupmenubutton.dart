import 'package:flutter/material.dart'; 
 
 class PoPupmenubutton extends StatefulWidget {
   @override
   _PoPupmenubuttonState createState() => _PoPupmenubuttonState();
 }
 
 class _PoPupmenubuttonState extends State<PoPupmenubutton> {
  

  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
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
            Navigator.of(context).pop();
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

    