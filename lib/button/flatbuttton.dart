import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

import 'buttonnbar.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class Flatbutton extends StatefulWidget {
  @override
  _FlatbuttonState createState() => _FlatbuttonState();
}

class _FlatbuttonState extends State<Flatbutton> {

  static final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
    testDevices: <String>[],
    keywords: <String>['software','web development','app development','java ', 'python','machine learning' ,'data science','robotics','mathematics','physics','technology','college' 'microsoft'],
   
    childDirected: true,
    nonPersonalizedAds: true,
    
    
  );


  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;
 

  BannerAd createBannerAd() {
    return new BannerAd(
        adUnitId: "ca-app-pub-3032113909807052/1268587433",
        size: AdSize.banner,
        targetingInfo: targetInfo,
        listener: (MobileAdEvent event) { 
          print("Banner event : $event");
        });
  }

  InterstitialAd createInterstitialAd() {
    return new InterstitialAd(
        adUnitId: "ca-app-pub-3032113909807052/7043017665",
        targetingInfo: targetInfo,
        listener: (MobileAdEvent event) {
          print("Interstitial event : $event");
        });
  }

   @override
  void initState() {
      
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-3032113909807052~8795083036");
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
     
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
          appBar: AppBar(
             leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('FlatButton',style: TextStyle(color: Colors.black),),
          ),

          body: Center(child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('FlatButton Example'),
                onPressed: () {},
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('Login'),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Yashven()));
                },
              ),
            ),


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
                            createInterstitialAd()..load()..show();

            Navigator.of(context).push( MaterialPageRoute(builder: (context)=>Codeview()));
          }),
        )
          ]))
    );
  }
}









// class MyApp extends StatefulWidget {
//   @override
//   _State createState() => new _State();
// }
// ​
// class _State extends State<MyApp>{
// ​
//   String _value = 'Hello World';
// ​
//   void _onPressed() {
//     setState(() {
//       _value = new DateTime.now().toString();
//     });
//   }
// ​
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Name here'),
//       ),
//       //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
//       body: new Container(
//         padding: new EdgeInsets.all(32.0),
//         child: new Center(
//           child: new Column(
//             children: <Widget>[
//               new Text(_value),
//               //dart treates everything as objects so we pass a function in onPressed value
              

// new FlatButton(onPressed: _onPressed, child: new Text('Click me'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

 

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
  sourceFilePath: 'lib/button/flatbuttton.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/button/flatbuttton.dart',
      ),
      
    );
  }
}

class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Flatbutton());
    }
  }
