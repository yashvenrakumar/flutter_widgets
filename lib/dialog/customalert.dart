import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

const List<Key> keys = [
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];

class Alertdialogg extends StatefulWidget {
  @override
  _AlertdialoggState createState() => _AlertdialoggState();
}

class _AlertdialoggState extends State<Alertdialogg> {
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" custom alert",style: TextStyle(color: Colors.black),),
         ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                key: keys[0],
                color: Colors.teal,
                child: Text(
                  "Network Giffy",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => NetworkGiffyDialog(
                            key: keys[1],
                            image: Image.network(
                              "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                              fit: BoxFit.cover,
                            ),
                            entryAnimation: EntryAnimation.TOP_LEFT,
                            title: Text(
                              'Granny Eating Chocolate',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.w600),
                            ),
                            description: Text(
                              'This is a granny eating chocolate dialog box. This library helps you easily create fancy giffy dialog.',
                              textAlign: TextAlign.center,
                            ),
                            onOkButtonPressed: () {},
                          ));
                }),
            RaisedButton(
                key: keys[2],
                color: Colors.teal,
                child: Text(
                  'Flare Giffy',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => FlareGiffyDialog(
                            key: keys[3],
                            flarePath: 'assets/space_demo.flr',
                            flareAnimation: 'loading',
                            title: Text(
                              'Space Reloading',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.w600),
                            ),
                            entryAnimation: EntryAnimation.DEFAULT,
                            description: Text(
                              'This is a space reloading dialog box. This library helps you easily create fancy flare dialog.',
                              textAlign: TextAlign.center,
                              style: TextStyle(),
                            ),
                            onOkButtonPressed: () {},
                          ));
                }),
            RaisedButton(
                key: keys[4],
                color: Colors.teal,
                child: Text(
                  'Asset Giffy',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AssetGiffyDialog(
                            key: keys[5],
                            image: Image.asset(
                              'assets/men_wearing_jacket.gif',
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              'Men Wearing Jackets',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.w600),
                            ),
                            entryAnimation: EntryAnimation.BOTTOM_RIGHT,
                            description: Text(
                              'This is a men wearing jackets dialog box. This library helps you easily create fancy giffy dialog.',
                              textAlign: TextAlign.center,
                              style: TextStyle(),
                            ),
                            onOkButtonPressed: () {},
                          ));
                }),



                      Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          }),
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
  sourceFilePath: 'lib/dialog/customalert.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/dialog/customalert.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Alertdialogg());
    }
  }
 
 