import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class Clippathh extends StatefulWidget {
  @override
  _ClippathhState createState() => _ClippathhState();
}

class _ClippathhState extends State<Clippathh> {
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
        actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed: (){
                           createInterstitialAd()..load()..show();

           Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

           })
         ],
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" ClipPath",style: TextStyle(color: Colors.black),),
         ),
      body: Center(
        child: ClipPath(
	
    clipper: MyCustomClipper(),
	
    child: Image.network(
	
      'https://i.ibb.co/1vXpqVs/flutter-logo.jpg',
	
    ),
	
  ),

      ),
      
    );
  }
}

  // child: ClipPath(
	
  //   clipper: MyCustomClipper(),
	
  //   child: Image.network(
	
  //     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg',
	
  //   ),
	
  // ),



  class MyCustomClipper extends CustomClipper<Path> {
	
    @override
	
    Path getClip(Size size) {
	
      final path = Path();
	
      path.lineTo(size.width, 0.0);
	
      path.lineTo(size.width * 0.75, size.height);
	
      path.lineTo(size.width * 0.25, size.height);
	
      path.close();
	
      return path;
	
    }
	
  
	
    @override
	
    bool shouldReclip(CustomClipper oldClipper) {
	
      return false;
	
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
  sourceFilePath: 'lib/painting&effect/clippath.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/painting%26effect/clippath.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Clippathh());
    }
  }
 
 