import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
 
 

class BasicOffstage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _BasicOffstageState createState() => _BasicOffstageState();
}

class _BasicOffstageState extends State<BasicOffstage> {
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
    Stack stack = new Stack(
      children: <Widget>[
        _getStackPage(false),
        _getStackPage(true), // set offstageFlag to false to show keyboard
      ],
    );

    MaterialApp mainMaterialApp= new MaterialApp(
      home: new Scaffold(
        body: stack,
      ),
    );

    return mainMaterialApp;
  }

  Widget _getStackPage(bool offstageFlag) {
    Offstage offstage = new Offstage(
      offstage: offstageFlag,
      child: new MaterialApp(
        home: new Scaffold(
          body: new Center(
            child: new TextField(),
          ),
        ),
      ),
    );

    return offstage;
  }
}