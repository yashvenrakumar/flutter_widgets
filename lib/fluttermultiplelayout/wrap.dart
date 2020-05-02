import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class Wrapexapmle extends StatefulWidget {
  @override
  _WrapexapmleState createState() => _WrapexapmleState();
}

class _WrapexapmleState extends State<Wrapexapmle> {
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
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }), 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Wrap example",style: TextStyle(color: Colors.black),),
         ),
      body: Column(
        children: <Widget>[
          Container(
        child: Wrap(
spacing: 8.0, // gap between adjacent chips
runSpacing: 4.0, // gap between lines
children: <Widget>[
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
label: Text('Hamilton'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
label: Text('Lafayette'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
label: Text('Mulligan'),
),

Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
label: Text('Lafayette'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
label: Text('Mulligan'),
),

Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
label: Text('Lafayette'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
label: Text('Mulligan'),
),

Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
label: Text('Lafayette'),
),
Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
label: Text('Mulligan'),
),

Chip(
avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('JL')),
label: Text('Laurens'),
),
],
),
      ),

      
            Container(
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 100, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
                            createInterstitialAd()..load()..show();

          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          }),
        ),

      
        ],
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
  sourceFilePath: 'lib/fluttermultiplelayout/wrap.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttermultiplelayout/wrap.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Wrapexapmle());
    }
  }
 
 