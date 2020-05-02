import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class TabLayoutDemo extends StatefulWidget {
  @override
  _TabLayoutDemoState createState() => _TabLayoutDemoState();
}

class _TabLayoutDemoState extends State<TabLayoutDemo> {
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
    
    return new MaterialApp(
      color: Colors.yellow[100],
      home: DefaultTabController(
        length: 4,
        
        child: new Scaffold(
        

          appBar: AppBar(
             leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
            actions: <Widget>[],
            title: Text(' tabbar view'),
            bottom: TabBar(
              
            tabs: [
              Tab( icon: new Icon(Icons.home) ),
              Tab( icon: new Icon(Icons.rss_feed),),
              Tab( icon: new Icon(Icons.perm_identity),),
              
              Tab(icon: new Icon(Icons.settings),)
            ],
            

            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(15.0),
            indicatorColor: Colors.red,

          ),
          ),
          body: TabBarView(
            
            children: [
              Container(color: Colors.blue[200],
              child:  Center(
        child:       Container(
          width: 220,
          height: 50,
         // margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
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

      ),
              ),
              Container(color: Colors.orange[200],),
              Container(color: Colors.yellow[200],),
              Container(color: Colors.green[200],)
              
          
            ],
          ),
  
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
  sourceFilePath: 'lib/fluttnavigatioo/flutttertabbarview.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttnavigatioo/flutttertabbarview.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child:TabLayoutDemo());
    }
  }
 
 