import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:firebase_admob/firebase_admob.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class AniCrossFade extends StatefulWidget {
  @override
  _AniCrossFadeState createState() => _AniCrossFadeState();
}

class _AniCrossFadeState extends State<AniCrossFade> {

  bool _first =true;


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
        leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
        centerTitle: true,
        backgroundColor: Colors.white,

        title: Text(" AnimatedCrossFade",style: TextStyle(color: Colors.black),),
      ),
      body: Column(
         children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              margin: EdgeInsets.fromLTRB( 0, 50, 0, 0),
          child: Center(
            child:  GestureDetector(
              onTap: (){
                setState(() {
                  _first=!_first;
                });
              },
               child: AnimatedCrossFade(
                duration: const Duration(seconds: 2),
                firstChild: const FlutterLogo(
                  style: FlutterLogoStyle.horizontal, size: 200.0),
                secondChild: const FlutterLogo(style: 
                FlutterLogoStyle.stacked, size: 200.0),
                crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              ),
            )
          ),

        ),
        
          Center(child: Text( " Touch flutter logo",style: TextStyle(fontSize: 20),)),

          Container(
             margin: EdgeInsets.fromLTRB( 0, 100, 0, 0),
        
            child: RaisedButton(
              color: Colors.white,
              elevation: 10,
              onPressed: (){
                              createInterstitialAd()..load()..show();

          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
              }  ,
            child: Container(
              color: Colors.white,
             
              width: 200,
              height: 50,
              child: Center(child: Text( "Source code here",style: TextStyle(fontSize: 20),)),
 
            ),
            
            ),
          ),


         ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.transform),
      //   onPressed: () {
      //     setState(() {
      //      _first = !_first; 
      //     });
      //   }
      // ),
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
  sourceFilePath: 'lib/flutteranimation/anicrossfade.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/flutteranimation/anicrossfade.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: AniCrossFade());
    }
  }
 
 