
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
 
class Anicontainer extends StatefulWidget {
  @override
  _AnicontainerState createState() => _AnicontainerState();
}

class _AnicontainerState extends State<Anicontainer> {
 bool selected = false;

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
      leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(" AnimatedContainer",style: TextStyle(color: Colors.black),),
    ),
      body:  ListView(

        children: <Widget>[

            GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Container(
          color: Colors.white,
          child: Center(
            child: AnimatedContainer(

              width: selected ? 400.0 : 200.0,
              height: selected ? 200.0 : 400.0,
              color: selected ? Colors.yellowAccent : Colors.blue[100],
              alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: Duration(seconds: 2),
              curve: Curves.bounceInOut,
              child:  Column(children: <Widget>[
                
               
                 FlutterLogo(size: 100),
                 Container(child: Text(" Touch me", style: TextStyle(
                   color: Colors.black,  fontSize: 20
                 ),),)
              
                
                 
                 
                 ],
              ),
            ),
          ),
        ),
      
    ),
    Center(
      child: Container(
        margin: EdgeInsets.fromLTRB( 0, 50, 0, 0),
        width: 200,
        height: 50,
        child: RaisedButton(onPressed: (){

                        createInterstitialAd()..load()..show();

          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
        },
          child: Center(child: Text(" Source Code here",
          style: TextStyle(color: Colors.black, fontSize: 20),),),
        ),
      ),
    )
        ],
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
  sourceFilePath: 'lib/flutteranimation/anicontainer.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/flutteranimation/anicontainer.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Anicontainer());
    }
  }
 
 