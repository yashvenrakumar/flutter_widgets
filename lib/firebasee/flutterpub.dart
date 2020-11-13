import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:firebase_admob/firebase_admob.dart';

class Fltterpub extends StatefulWidget {
  @override
  _FltterpubState createState() => _FltterpubState();
}

class _FltterpubState extends State<Fltterpub> {
  static final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
    testDevices: <String>[],
    keywords: <String>[
      'software',
      'web development',
      'app development',
      'java ',
      'python',
      'machine learning',
      'data science',
      'robotics',
      'mathematics',
      'physics',
      'technology',
      'college' 'microsoft'
    ],
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
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          expandedHeight: 150,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              'flutter firebase Plugin',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            background: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/flutterwithfirebase-9d09c.appspot.com/o/pub.png?alt=media&token=19246056-b9ae-4e95-b497-1e282c7286df',
              fit: BoxFit.contain,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "cloud_firestore",
                        selectedUrl: "https://pub.dev/packages/cloud_firestore",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Cloud Firestore',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Cloud Functions",
                        selectedUrl: "https://pub.dev/packages/cloud_functions",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Cloud Functions',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase AdMob",
                        selectedUrl: "https://pub.dev/packages/firebase_admob",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase AdMob',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Analytics",
                        selectedUrl:
                            "https://pub.dev/packages/firebase_analytics",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase Analytics ',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Authentication",
                        selectedUrl: "https://pub.dev/packages/firebase_auth",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase Authentication',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Core",
                        selectedUrl: "https://pub.dev/packages/firebase_core",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase Core',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Crashlytics",
                        selectedUrl:
                            "https://pub.dev/packages/firebase_crashlytics",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase Crashlytics',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Realtime Database",
                        selectedUrl:
                            "https://pub.dev/packages/firebase_database",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase Realtime Database',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Dynamic Links",
                        selectedUrl:
                            "https://pub.dev/packages/firebase_dynamic_links",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase Dynamic Links',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase In-App Messaging",
                        selectedUrl:
                            "https://pub.dev/packages/firebase_in_app_messaging",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase In-App Messaging',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Cloud Messaging",
                        selectedUrl:
                            "https://pub.dev/packages/firebase_messaging",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase Cloud Messaging',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase ML Kit",
                        selectedUrl:
                            "https://pub.dev/packages/firebase_ml_vision",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase ML Kit',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Performance Monitoring",
                        selectedUrl:
                            "https://pub.dev/packages/firebase_performance",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase Performance Monitoring',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Remote Config",
                        selectedUrl:
                            "https://pub.dev/packages/firebase_remote_config",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter Firebase Remote Config',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                        title: "Firebase Cloud Storage",
                        //selectedUrl: "https://pub.dev/packages/firebase_storage",

                        selectedUrl:
                            "packages/cloud_firestore/cloud_firestore/lib/cloud_firestore.dart",
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter firebase  Cloud Storage',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class MyWebView extends StatelessWidget {
  final String title;
  final String selectedUrl;
  MyWebView({
    @required this.title,
    @required this.selectedUrl,
  });
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        url: selectedUrl,
        withJavascript: true,
        withZoom: true,
        hidden: true,
        initialChild: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 350,
                ),
                Image.asset(" assets/load.gif"),
                SizedBox(
                  height: 20,
                ),
                Text(" waiting.....")
              ],
            ),
          ),
        ));
  }
}
