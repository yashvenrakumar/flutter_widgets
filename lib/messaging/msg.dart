 
 

import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';   
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutterallwidgets/messaging/fluttscreen.dart';

class Msg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MsgState();
  }
}

class _MsgState extends State<Msg> {
  String _message = '';

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  void getMessage() {
   _firebaseMessaging.configure(
     
        onMessage: (Map<String, dynamic> message) async {
      
      print('on message $message');
      setState(() => _message = message["notification"]["title"]);
    }, onResume: (Map<String, dynamic> message) async {
      print('on resume $message');
      setState(() => _message = message["notification"]["title"]);
    }, onLaunch: (Map<String, dynamic> message) async {
      print('on launch $message');
      setState(() => _message = message["notification"]["title"]);
    });
  }



  _register() {
    _firebaseMessaging.getToken().then((token) => print(token));
  }

  StreamSubscription<List<PurchaseDetails>> _subscription1;


  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> flutterupdate;
  final CollectionReference collectionReference =
      Firestore.instance.collection("flutter");


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
    
    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        flutterupdate = datasnapshot.documents;
      });
    });

    

        getMessage();
     final Stream purchaseUpdates =
        InAppPurchaseConnection.instance.purchaseUpdatedStream;
    _subscription1 = purchaseUpdates.listen((purchases) {
       
    });



     FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-3032113909807052~8795083036");
    _bannerAd = createBannerAd()
      ..load()
      ..show();


 
    
   
  }

   @override
  void dispose() {
     
      subscription?.cancel();
      _subscription1.cancel();
       _bannerAd?.dispose();
    _interstitialAd?.dispose();
    super.dispose();
  }

 
  
  
  @override
   Widget build(BuildContext context) {
    return  SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[100],
              centerTitle: true,
              title: Text( 'Flutter Backend Post', style: TextStyle( color:Colors.black,fontSize: 25, fontWeight: FontWeight.bold),),
            ),
      body: flutterupdate != null
              ? ListView.builder(
                
                scrollDirection: Axis.vertical,
                itemCount: flutterupdate.length,
                itemBuilder: (context ,i){
                  String imgPath = flutterupdate[i].data['url'];
                  String tagg = flutterupdate[i].data['tag'];
                  String title = flutterupdate[i].data['title'];
                  String name = flutterupdate[i].data['name'];
                  String link = flutterupdate[i].data['link'];

               
                  return  FlatButton(
                    onPressed: (){
                       _register();
                       getMessage();
                       
      
                Navigator.of(context).push( MaterialPageRoute(builder:  (context)=>FullScreenImagePage(imgPath,link,name,tagg,title)));
                    },
                                      child: Container(
                      color: Colors.blue[100],
                      margin: EdgeInsets.fromLTRB( 0, 10, 0, 10),
                      
                     height: 250,
                       width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                                          child: Container(
                                            margin: EdgeInsets.all( 4),
                                            width: MediaQuery.of(context).size.width,
                                            height: 150,
                                            child: new InkWell(
                              onTap: () {
                                getMessage();
                            Navigator.of(context).push( MaterialPageRoute(builder:  (context)=>FullScreenImagePage(imgPath,link,name,tagg,title)));

                             },
                              child:  ClipRRect(
                                borderRadius: BorderRadius.circular( 15),
                                                            child: new Hero(
                                  tag: imgPath,
                                  child: new FadeInImage(
                                    image: new NetworkImage(imgPath),
                                    fit: BoxFit.cover,
                                    placeholder: new AssetImage("assets/load.gif"),
                                  
                                ),
                            ),
                              ),
                          
                        ),
                                          ),
                     ),

                     Align(
                       alignment: Alignment.topRight,
                       child: Container(
                         margin: EdgeInsets.all( 7),
                         child: CircleAvatar(
                           
                           radius: 40,
                            backgroundColor: Colors.blue[100],
                           backgroundImage: NetworkImage(tagg),
                         ),
                       ),
                     ),

                     Align(
                       alignment: Alignment.bottomCenter,
                       child: Container(
                         
              
                         color: Colors.orange[50],
                         width: MediaQuery.of(context).size.width,
                         height: 96,
                         child: Center(
                           child: Text( title, style: TextStyle( fontSize:20, 
                           color: Colors.black, fontWeight: FontWeight.bold),),
                         ),
                       ),
                     )

                        ],
                      ),
                    ),
                  );

                })
              : new Center(
                  child: new CircularProgressIndicator(),
                )),
    );
  }
}



 