import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class HeroWidget extends StatefulWidget {


  
  @override
  _HeroWidgetState createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {

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
        backgroundColor: Colors.white,
        centerTitle: true,
        
        title: Text(
          'Hero Widget',
          style: TextStyle(
            color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
               ),
        ),
         
      ),
      body: WillPopScope(
        child: GestureDetector(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                  child: Text(
                    ' Hero animation in slow motion',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14.0,
                        fontStyle: FontStyle.italic,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Hero(
                      tag: "hero",
                      child: Container(
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(12),
                        color: Colors.white,
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              child: Container(
                                color: Colors.blue[50],
                              ),
                              borderRadius: BorderRadius.circular(10),
                              clipBehavior: Clip.antiAlias,
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: 100,
                                height: 100,
                                child: FlutterLogo(
                                  colors: Colors.lightBlue,
                                  textColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(child: Text(" touch flutter logo")),


                             Center(
           child: Container(
                margin: EdgeInsets.fromLTRB( 0, 130, 0, 0),
                width: 230,
                height: 50,
                child: RaisedButton(
                  elevation: 10,
                  color: Colors.white,
                  child: Text(
                     'Source Code here ..!',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
                  },
                ),
              ),
         ),

                  ],
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).push( MaterialPageRoute(builder:  (context)=>Yash()));
              timeDilation = 4.0;
            }),
        onWillPop: () {
          //Reset timeDilation since it is a Global property
         timeDilation = 1.0;
          return Future.value(true);
        },
      ),
    );
  }
}
 

class Yash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white,
         centerTitle: true,
        title: Text("flutter hero motion  animation",style: TextStyle(
          color: Colors.black,
        ),
        )
        ),
         body: WillPopScope(
          child: GestureDetector(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Hero(
                        tag: "hero",
                        child: Container(
                          width: 200,
                          height: 200,
                          margin: EdgeInsets.all(12),
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                child: Container(
                                  color: Colors.blue[200],
                                ),
                                borderRadius: BorderRadius.circular(10),
                                clipBehavior: Clip.antiAlias,
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: 100,
                                  height: 100,
                                  child: FlutterLogo(
                                    colors: Colors.lightBlue,
                                    textColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(child: Text(" touch flutter logo")),

 

                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context).pop();
                timeDilation = 4.0;
              }),
          onWillPop: () {
            //Reset timeDilation since it is a Global property
           timeDilation = 1.0;
            return Future.value(true);
          },
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
  sourceFilePath: 'lib/flutteranimation/hero.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/flutteranimation/hero.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: HeroWidget());
    }
  }
 
 