import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class Scrollview extends StatefulWidget {
  @override
  _ScrollviewState createState() => _ScrollviewState();
}

class _ScrollviewState extends State<Scrollview> {
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
    return   Scaffold(
      appBar: AppBar( 
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
         actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed: (){
                           createInterstitialAd()..load()..show();

                     Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

           })
         ],
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text("Scrollable",style: TextStyle(color: Colors.black),),
         ),
          body: Container(
              child: new SingleChildScrollView(
                  child: new ConstrainedBox(
        constraints: new BoxConstraints(),
        child: new Column(children: <Widget>[
          new Image.network(
            'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
          ),
          new Container(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
            color: Colors.grey,
            child: new Text(
              'Cast Light life style Here',
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          new Container(
            child: new Text(
                   'Hi There ? this is sample plaid app using flutter sdk and dart programming language, devceloper is Hammad Tariq'
                    
                  'Flutter app SingleChildScrollView Example ',
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
          ),

          Container(
            height: 200,
            color: Colors.orange[200],
            margin: EdgeInsets.all( 12),
          ),

           Container(
            height: 200,
            color: Colors.orange[200],
            margin: EdgeInsets.all( 12),
          ),

           Container(
            height: 200,
            color: Colors.orange[200],
            margin: EdgeInsets.all( 12),
          )
 
 
        ]),
      ))),
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
  sourceFilePath: 'lib/fscrolling/scrollable.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fscrolling/scrollable.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Scrollview());
    }
  }
 
 