import 'package:flutter/material.dart';  
import 'package:firebase_admob/firebase_admob.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class Drawerexmple extends StatefulWidget {
  @override
  _DrawerexmpleState createState() => _DrawerexmpleState();
}

class _DrawerexmpleState extends State<Drawerexmple> {

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
            backgroundColor: Colors.black,
            title: Text(" drawer example",
             style: TextStyle(color: Colors.white),)),  
          body: Center(
        child:       Container(
          width: 220,
          height: 50,
          //margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
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

      
          drawer: Drawer(  
            elevation: 6,
            
            
            child: ListView(  
              
              // Important: Remove any padding from the ListView.  
              padding: EdgeInsets.zero,  
              children: <Widget>[  
                UserAccountsDrawerHeader( 
                   decoration: BoxDecoration(
                     color: Colors.black
                   ),
        
                  accountName: Text("yashvedra kumar"),  
                  accountEmail: Text("yashvendra95@gmail.com"),  
                  currentAccountPicture: CircleAvatar(  
                    backgroundColor: Colors.white,  
                    child: Text(  
                      "Y",  
                      style: TextStyle(
                        
                        color: Colors.black,
                        fontSize: 45.0),  
                    ),  
                  ),  
                ),  
                ListTile(  
                  leading: Icon(Icons.home), title: Text("Home"),  
                  onTap: () {  
                    Navigator.pop(context);  
                  },  
                ),  
                ListTile(  
                  leading: Icon(Icons.settings), title: Text("Settings"),  
                  onTap: () {  
                    Navigator.pop(context);  
                  },  
                ),  
                ListTile(  
                  leading: Icon(Icons.contacts), title: Text("Contact Us"),  
                  onTap: () {  
                    Navigator.pop(context);  
                  },  
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
  sourceFilePath: 'lib/fluttnavigatioo/flutterdrawer.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fluttnavigatioo/flutterdrawer.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Drawerexmple());
    }
  }
 
 