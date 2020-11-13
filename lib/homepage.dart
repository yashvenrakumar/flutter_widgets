import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterallwidgets/paidcourse/community.dart';
import 'package:flutterallwidgets/tabbarview/home.dart';
import 'package:flutterallwidgets/you/youtube.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

import 'messaging/msg.dart';
import 'dart:async';
import 'dart:ui';
import 'plugin.dart';

const String testDevice = 'RMX1811';

class Matedesign extends StatefulWidget {
  @override
  _MatedesignState createState() => _MatedesignState();
}

class _MatedesignState extends State<Matedesign> {
  void playYoutubeVideo(String urll) {
    FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: "AIzaSyBRaaQpUkMVw5pHJIFbHk0PyjCCluW52cc",
        videoUrl: urll,
        backgroundColor: Colors.white,
        appBarColor: Colors.black45,
        fullScreen: true,
        autoPlay: true);
  }

  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> flutterupdate;
  final CollectionReference collectionReference =
      Firestore.instance.collection("flutter");

  StreamSubscription<QuerySnapshot> subscription1;
  List<DocumentSnapshot> flutterupdate1;
  final CollectionReference collectionReference1 =
      Firestore.instance.collection("youtube");

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

    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        flutterupdate = datasnapshot.documents;
      });
    });

    subscription1 = collectionReference1.snapshots().listen((datasnapshot) {
      setState(() {
        flutterupdate1 = datasnapshot.documents;
      });
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
    subscription1?.cancel();
    _bannerAd?.dispose();
    _interstitialAd?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: new Scaffold(
            appBar: AppBar(
              iconTheme: new IconThemeData(color: Colors.black),

              //centerTitle: true,
              // actions: <Widget>[
              //   IconButton(
              //       icon: Icon(
              //         Icons.add_to_queue,
              //         color: Colors.green,
              //         size: 25,
              //       ),
              //       onPressed: () {
              //         Navigator.of(context)
              //             .push(MaterialPageRoute(builder: (context) => Plu()));
              //       }),
              //   IconButton(
              //       icon: Icon(
              //         Icons.view_day,
              //         color: Colors.blue,
              //         size: 22,
              //       ),
              //       onPressed: () {
              //         Navigator.of(context)
              //             .push(MaterialPageRoute(builder: (context) => Msg()));
              //       }),
              //   IconButton(
              //       icon: Icon(
              //         Icons.video_library,
              //         color: Colors.red,
              //         size: 22,
              //       ),
              //       onPressed: () {
              //         Navigator.of(context).push(MaterialPageRoute(
              //             builder: (context) => Youtubestories()));
              //       }),
              // ],
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                "Flutter",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),

              bottom: TabBar(
                tabs: [
                  Tab(
                      child: Column(
                    children: <Widget>[
                      Center(
                          child: Icon(
                        Icons.home,
                        size: 22,
                      )),
                      Center(
                          child: Text(
                        "Home",
                      ))
                    ],
                  )),
                  Tab(
                      child: Column(
                    children: <Widget>[
                      Center(
                          child: Icon(
                        Icons.personal_video,
                        size: 22,
                      )),
                      Center(child: Text("community"))
                    ],
                  )),
                  Tab(
                      child: Column(
                    children: <Widget>[
                      Center(
                          child: Icon(
                        Icons.book,
                        size: 22,
                      )),
                      Center(
                          child: Text(
                        "Videos",
                      ))
                    ],
                  )),
                  Tab(
                      child: Column(
                    children: <Widget>[
                      Center(
                          child: Icon(
                        Icons.business,
                        size: 22,
                      )),
                      Center(
                          child: Text(
                        "Flugin",
                      ))
                    ],
                  )),
                ],
                //labelPadding: EdgeInsets.all(10),
                //dragStartBehavior: DragStartBehavior.start,
                isScrollable: true,
                labelColor: Colors.blue[200],
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                // indicatorPadding: EdgeInsets.all(15.0),
                indicatorColor: Colors.blue,
                indicatorWeight: 5,
                // isScrollable: true,
                // labelColor: Colors.redAccent,
                // unselectedLabelColor: Colors.black,
                // indicatorSize: TabBarIndicatorSize.label,
                // indicatorColor: Colors.redAccent,

                // labelStyle:
                //     TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
            body: TabBarView(
              children: [Homepage(), Crm(), Youtubestories(), Plu()],
            ),
            drawer: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.white,

                  //This will change the drawer background to blue.
                  //other styles
                ),
                child: Drawer(
                  elevation: 10,
                  child: ListView(
                    padding: EdgeInsets.all(10),
                    children: <Widget>[
                      UserAccountsDrawerHeader(
                          decoration: BoxDecoration(color: Colors.white),
                          accountEmail: Text(
                            ' dart & firebase',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          accountName: Text(
                            'flutter widgets app',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          currentAccountPicture: CircleAvatar(
                            backgroundColor: Colors.blue[50],
                            child: FlutterLogo(
                              size: 40,
                            ),
                            //backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/jeemainadvenced.appspot.com/o/yash.png?alt=media&token=73602a58-ade9-4732-9c89-0176373059b5'),
                          )),
                      Divider(
                        height: 10,
                        color: Colors.lightBlueAccent,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => Msg(),
                              ),
                            );
                          },

                          child: ListTile(
                              leading: FlutterLogo(
                                size: 40,
                              ),
                              title: Text(
                                " flutter backend ",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          //  child: Center(
                          //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

                          //  ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Youtubestories(),
                              ),
                            );
                          },

                          child: ListTile(
                              leading: Icon(
                                Icons.video_library,
                                size: 35,
                                color: Colors.red,
                              ),
                              title: Text(
                                " flutter vedioes ",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          //  child: Center(
                          //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

                          //  ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            createInterstitialAd()
                              ..load()
                              ..show();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyWebView(
                                  title: " material design",
                                  selectedUrl:
                                      "https://material.io/develop/flutter/",
                                ),
                              ),
                            );
                          },

                          child: ListTile(
                              leading: Icon(
                                Icons.description,
                                size: 30,
                                color: Colors.blue,
                              ),
                              title: Text(
                                " flutter material.io ",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black),
                              )),
                          //  child: Center(
                          //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

                          //  ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            createInterstitialAd()
                              ..load()
                              ..show();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyWebView(
                                  title: " codelabs",
                                  selectedUrl:
                                      "https://codelabs.developers.google.com/?cat=Flutter",
                                ),
                              ),
                            );
                          },
                          child: ListTile(
                              leading: Icon(
                                Icons.code,
                                size: 35,
                                color: Colors.blue,
                              ),
                              title: Text(
                                " flutter codelabs ",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black),
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            createInterstitialAd()
                              ..load()
                              ..show();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyWebView(
                                  title: " flutter official wabsite ",
                                  //selectedUrl: "https://pub.dev/packages/firebase_storage",

                                  selectedUrl:
                                      "https://flutter.dev/docs/development/ui/widgets",
                                ),
                              ),
                            );
                          },

                          child: ListTile(
                              leading: FlutterLogo(
                                size: 40,
                              ),
                              title: Text(
                                " flutter official ",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          //  child: Center(
                          //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

                          //  ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            createInterstitialAd()
                              ..load()
                              ..show();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyWebView(
                                  title: " dartpad",
                                  //selectedUrl: "https://pub.dev/packages/firebase_storage",

                                  selectedUrl: "https://dartpad.dev/",
                                ),
                              ),
                            );
                          },

                          child: ListTile(
                              leading: Icon(
                                Icons.code,
                                size: 40,
                                color: Colors.blueAccent,
                              ),
                              title: Text(
                                " Dartpad ",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          //  child: Center(
                          //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

                          //  ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            createInterstitialAd()
                              ..load()
                              ..show();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyWebView(
                                  title: " dart programming",
                                  //selectedUrl: "https://pub.dev/packages/firebase_storage",
                                  selectedUrl: "https://dart.dev/",
                                ),
                              ),
                            );
                          },

                          child: ListTile(
                              leading: FlutterLogo(
                                size: 40,
                              ),
                              title: Text(
                                " Dart programming ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              )),
                          //  child: Center(
                          //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

                          //  ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            createInterstitialAd()
                              ..load()
                              ..show();

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyWebView(
                                  title: " flutter youtube ",
                                  //selectedUrl: "https://pub.dev/packages/firebase_storage",

                                  selectedUrl:
                                      "https://www.youtube.com/flutterdev",
                                ),
                              ),
                            );
                          },
                          child: ListTile(
                              leading: Icon(
                                Icons.video_library,
                                color: Colors.redAccent,
                                size: 35,
                              ),
                              title: Text(
                                "flutter youtube",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            createInterstitialAd()
                              ..load()
                              ..show();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyWebView(
                                  title: " flutter github ",
                                  //selectedUrl: "https://pub.dev/packages/firebase_storage",

                                  selectedUrl: "https://github.com/flutter",
                                ),
                              ),
                            );
                          },
                          child: ListTile(
                              leading: Icon(
                                Icons.desktop_windows,
                                color: Colors.black,
                                size: 30,
                              ),
                              title: Text(
                                "github",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            createInterstitialAd()
                              ..load()
                              ..show();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyWebView(
                                  title: " flutter twitter",
                                  //selectedUrl: "https://pub.dev/packages/firebase_storage",

                                  selectedUrl: "https://twitter.com/flutterdev",
                                ),
                              ),
                            );
                          },
                          child: ListTile(
                              leading: Icon(
                                Icons.insert_link,
                                color: Colors.blueAccent,
                                size: 30,
                              ),
                              title: Text(
                                "flutter twitter",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () {
                            createInterstitialAd()
                              ..load()
                              ..show();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyWebView(
                                  title: " flutter package ",
                                  //selectedUrl: "https://pub.dev/packages/firebase_storage",

                                  selectedUrl:
                                      " https://pub.dev/flutter/packages",
                                ),
                              ),
                            );
                          },
                          child: ListTile(
                            leading: FlutterLogo(
                              size: 40,
                            ),
                            title: Text(
                              "flutter package",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: _rate,
                          child: Center(
                            child: Text(
                              "rate us app **",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: () async => await _shareText(),
                          child: ListTile(
                            trailing: Icon(
                              Icons.share,
                              color: Colors.black,
                              size: 45,
                            ),
                            title: Text(
                              "plz share the app",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            drawerScrimColor: Colors.white,
          ),
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
    return Scaffold(
      body: SafeArea(
        child: WebviewScaffold(
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
                    Text(
                      " waiting.....",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

Future<void> _shareText() async {
  try {
    Share.text(
        'flutter all widgets',
        'flutter all widgets https://play.google.com/store/apps/details?id=com.yashoo.flutterallwidgets',
        'text/plain');
  } catch (e) {
    print('error: $e');
  }
}

_rate() async {
  const url =
      'https://play.google.com/store/apps/details?id=com.yashoo.flutterallwidgets';
  if ((url) != null) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterallwidgets/messaging/fluttscreen.dart';
// import 'package:flutterallwidgets/paidcourse/registration.dart';
// import 'package:flutterallwidgets/you/youtube.dart';
// import 'package:firebase_admob/firebase_admob.dart';
// import 'package:flutter_youtube/flutter_youtube.dart';
// import 'firebasee/fireba.dart';
// import 'flutteranimatio.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:esys_flutter_share/esys_flutter_share.dart';
// import 'flutterbutton.dart';
// import 'flutterdialo.dart';
// import 'fluttermultilay.dart';
// import 'flutternavigation.dart';
// import 'flutterpainting.dart';
// import 'flutterscrolling.dart';
// import 'fluttersinglelay.dart';
// import 'messaging/msg.dart';
// import 'dart:async';
// import 'dart:ui';
// import 'plugin.dart';
// import 'package:carousel_pro/carousel_pro.dart';

// const String testDevice = 'RMX1811';

// class Matedesign extends StatefulWidget {
//   @override
//   _MatedesignState createState() => _MatedesignState();
// }

// class _MatedesignState extends State<Matedesign> {
//   void playYoutubeVideo(String urll) {
//     FlutterYoutube.playYoutubeVideoByUrl(
//         apiKey: "AIzaSyBRaaQpUkMVw5pHJIFbHk0PyjCCluW52cc",
//         videoUrl: urll,
//         backgroundColor: Colors.white,
//         appBarColor: Colors.black45,
//         fullScreen: true,
//         autoPlay: true);
//   }

//   int currentPage = 0;

//   GlobalKey bottomNavigationKey = GlobalKey();
//   StreamSubscription<QuerySnapshot> subscription;
//   List<DocumentSnapshot> flutterupdate;
//   final CollectionReference collectionReference =
//       Firestore.instance.collection("flutter");

//   StreamSubscription<QuerySnapshot> subscription1;
//   List<DocumentSnapshot> flutterupdate1;
//   final CollectionReference collectionReference1 =
//       Firestore.instance.collection("youtube");

//   static final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
//     testDevices: <String>[],
//     keywords: <String>[
//       'software',
//       'web development',
//       'app development',
//       'java ',
//       'python',
//       'machine learning',
//       'data science',
//       'robotics',
//       'mathematics',
//       'physics',
//       'technology',
//       'college' 'microsoft'
//     ],
//     childDirected: true,
//     nonPersonalizedAds: true,
//   );

//   BannerAd _bannerAd;
//   InterstitialAd _interstitialAd;

//   BannerAd createBannerAd() {
//     return new BannerAd(
//         adUnitId: "ca-app-pub-3032113909807052/1268587433",
//         size: AdSize.banner,
//         targetingInfo: targetInfo,
//         listener: (MobileAdEvent event) {
//           print("Banner event : $event");
//         });
//   }

//   InterstitialAd createInterstitialAd() {
//     return new InterstitialAd(
//         adUnitId: "ca-app-pub-3032113909807052/7043017665",
//         targetingInfo: targetInfo,
//         listener: (MobileAdEvent event) {
//           print("Interstitial event : $event");
//         });
//   }

//   @override
//   void initState() {
//     super.initState();

//     subscription = collectionReference.snapshots().listen((datasnapshot) {
//       setState(() {
//         flutterupdate = datasnapshot.documents;
//       });
//     });

//     subscription1 = collectionReference1.snapshots().listen((datasnapshot) {
//       setState(() {
//         flutterupdate1 = datasnapshot.documents;
//       });
//     });

//     FirebaseAdMob.instance
//         .initialize(appId: "ca-app-pub-3032113909807052~8795083036");
//     _bannerAd = createBannerAd()
//       ..load()
//       ..show();
//   }

//   @override
//   void dispose() {
//     subscription?.cancel();
//     subscription1?.cancel();
//     _bannerAd?.dispose();
//     _interstitialAd?.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DefaultTabController(
//         length: 4,
//         child: new Scaffold(
//       appBar: AppBar(
//         iconTheme: new IconThemeData(color: Colors.black),

//         //centerTitle: true,
//         actions: <Widget>[
//           IconButton(
//               icon: Icon(
//                 Icons.add_to_queue,
//                 color: Colors.green,
//                 size: 25,
//               ),
//               onPressed: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) => Plu()));
//               }),
//           IconButton(
//               icon: Icon(
//                 Icons.view_day,
//                 color: Colors.blue,
//                 size: 22,
//               ),
//               onPressed: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) => Msg()));
//               }),
//           IconButton(
//               icon: Icon(
//                 Icons.video_library,
//                 color: Colors.red,
//                 size: 22,
//               ),
//               onPressed: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => Youtubestories()));
//               }),
//         ],
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: Text(
//           "Flutter",
//           style: TextStyle(
//               color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
//         ),

//          bottom: TabBar(
//               tabs: [
//                 Tab(
//                     child: Column(
//                   children: <Widget>[
//                     Center(
//                         child: Icon(
//                       Icons.home,
//                       size: 22,
//                     )),
//                     Center(
//                         child: Text(
//                       "Home",
//                     ))
//                   ],
//                 )),
//                 Tab(
//                     child: Column(
//                   children: <Widget>[
//                     Center(
//                         child: Icon(
//                       Icons.personal_video,
//                       size: 22,
//                     )),
//                     Center(child: Text("Show"))
//                   ],
//                 )),

//                 Tab(
//                     child: Column(
//                   children: <Widget>[
//                     Center(
//                         child: Icon(
//                       Icons.book,
//                       size: 22,
//                     )),
//                     Center(
//                         child: Text(
//                       "EAE",
//                     ))
//                   ],
//                 )),

//                 Tab(
//                     child: Column(
//                   children: <Widget>[
//                     Center(
//                         child: Icon(
//                       Icons.business,
//                       size: 22,
//                     )),
//                     Center(
//                         child: Text(
//                       "IBC",
//                     ))
//                   ],
//                 )),

//               ],
//               isScrollable: true,
//               labelColor: Colors.redAccent,
//               unselectedLabelColor: Colors.black,
//               indicatorSize: TabBarIndicatorSize.label,
//               indicatorColor: Colors.redAccent,
//               labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),

//             ),
//           ),

//       body: ListView(
//         scrollDirection: Axis.vertical,
//         children: <Widget>[
//           Container(
//             height: 160,
//             child: Carousel(
//               boxFit: BoxFit.fill,
//               autoplay: true,
//               animationCurve: Curves.fastOutSlowIn,
//               animationDuration: Duration(milliseconds: 1000),
//               dotSize: 8.0,
//               dotIncreasedColor: Colors.blue,
//               dotBgColor: Colors.transparent,
//               dotPosition: DotPosition.bottomCenter,
//               dotVerticalPadding: 10.0,
//               showIndicator: true,
//               indicatorBgPadding: 7.0,
//               images: [
//                 ExactAssetImage("assets/flu.png"),
//                 ExactAssetImage("assets/flu1.png"),
//                 ExactAssetImage("assets/flu2.png"),
//                 ExactAssetImage("assets/flu3.png"),
//                 ExactAssetImage("assets/flu4.png"),
//                 ExactAssetImage("assets/flu5.png"),
//               ],
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               // Navigator.of(context)
//               //     .push(MaterialPageRoute(builder: (context) => Regi()));
//             },
//             child: Container(
//               margin: EdgeInsets.all(5),
//               height: 100,
//               child: Card(
//                 child: Container(
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [Colors.blue[50], Colors.white])),
//                   child: Container(
//                     margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
//                     child: Center(
//                         child: Text(
//                       "Register Now For Learning in Practical Ways",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold),
//                     )),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           SizedBox(
//             height: 25,
//             child: FlatButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => Youtubestories()));
//               },
//               child: ListTile(
//                 trailing: Icon(
//                   Icons.arrow_forward_ios,
//                   color: Colors.black,
//                   size: 20,
//                 ),
//                 title: Text(
//                   "videos for concepts of flutter",
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
//             height: 170,
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: flutterupdate1.length,
//                 itemBuilder: (context, i) {
//                   String imgPath = flutterupdate1[i].data['url'];
//                   String urll = flutterupdate1[i].data['link'];
//                   return Container(
//                     margin: EdgeInsets.all(10),
//                     width: 270,
//                     height: MediaQuery.of(context).size.height,
//                     child: new InkWell(
//                       onTap: () {
//                         createInterstitialAd()
//                           ..load()
//                           ..show();
//                         playYoutubeVideo(urll);
//                       },
//                       child: new Hero(
//                         tag: imgPath,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(15),
//                           child: new FadeInImage(
//                             image: new NetworkImage(imgPath),
//                             fit: BoxFit.cover,
//                             placeholder: new AssetImage("assets/load.gif"),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//           ),

//           SizedBox(
//             height: 40,
//             child: FlatButton(
//                 onPressed: () {
//                   Navigator.of(context)
//                       .push(MaterialPageRoute(builder: (context) => Msg()));
//                 },
//                 child: ListTile(
//                   trailing: Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.black,
//                     size: 20,
//                   ),
//                   title: Text(
//                     'Recent Post',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )),
//           ),

//           Container(
//             margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
//             child: flutterupdate != null
//                 ? Container(
//                     height: 210,
//                     color: Colors.white,
//                     child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: flutterupdate.length,
//                         itemBuilder: (context, i) {
//                           String imgPath = flutterupdate[i].data['url'];
//                           String tagg = flutterupdate[i].data['tag'];
//                           String title = flutterupdate[i].data['title'];
//                           String name = flutterupdate[i].data['name'];
//                           String link = flutterupdate[i].data['link'];

//                           return InkWell(
//                             onTap: () {
//                               Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (context) => FullScreenImagePage(
//                                       imgPath, link, name, tagg, title)));
//                             },
//                             child: Container(
//                               color: Colors.white,
//                               height: 230,
//                               width: 340,
//                               child: Stack(
//                                 children: <Widget>[
//                                   Align(
//                                     alignment: Alignment.topCenter,
//                                     child: Container(
//                                       margin: EdgeInsets.all(4),
//                                       width: MediaQuery.of(context).size.width,
//                                       height: 150,
//                                       child: new InkWell(
//                                         onTap: () {
//                                           createInterstitialAd()
//                                             ..load()
//                                             ..show();
//                                           Navigator.of(context).push(
//                                               MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       FullScreenImagePage(
//                                                           imgPath,
//                                                           link,
//                                                           name,
//                                                           tagg,
//                                                           title)));
//                                         },
//                                         child: ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(8),
//                                           child: new Hero(
//                                             tag: imgPath,
//                                             child: new FadeInImage(
//                                               image: new NetworkImage(imgPath),
//                                               fit: BoxFit.cover,
//                                               placeholder: new AssetImage(
//                                                   "assets/load.gif"),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: Alignment.topRight,
//                                     child: Container(
//                                       margin: EdgeInsets.all(7),
//                                       child: CircleAvatar(
//                                         radius: 40,
//                                         backgroundColor: Colors.blue[100],
//                                         backgroundImage: NetworkImage(tagg),
//                                       ),
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Container(
//                                       margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
//                                       color: Colors.white,
//                                       width: MediaQuery.of(context).size.width,
//                                       height: 70,
//                                       child: Center(
//                                         child: Text(
//                                           title,
//                                           style: TextStyle(
//                                               fontSize: 20,
//                                               color: Colors.black,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           );
//                         }),
//                   )
//                 : new Center(
//                     child: new CircularProgressIndicator(),
//                   ),
//           ),

//           Container(
//             margin: EdgeInsets.all(12),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//                 color: Colors.white,
//                 elevation: 5,
//                 child: Text(
//                   "fluter animation ",
//                   style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.lightBlue),
//                 ),
//                 onPressed: () {
//                   //reateInterstitialAd()..load()..show();

//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => FlutterAnimatio(),
//                     ),
//                   );

//                   //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
//                 }),
//           ),

//           Container(
//             margin: EdgeInsets.all(12),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//                 color: Colors.white,
//                 elevation: 5,
//                 child: Text(
//                   "flutter painting & effects",
//                   style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.lightBlue),
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => FlutterPainting(),
//                     ),
//                   );

//                   //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
//                 }),
//           ),

//           Container(
//             margin: EdgeInsets.all(10),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//                 color: Colors.white,
//                 elevation: 5,
//                 child: Text("flutter scrolling",
//                     style: TextStyle(
//                         fontSize: 35,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.lightBlue)),
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => Flutterscrolling(),
//                     ),
//                   );

//                   //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
//                 }),
//           ),

//           Container(
//             margin: EdgeInsets.all(12),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//                 color: Colors.white,
//                 elevation: 5,
//                 child: Text(
//                   "flutter single layout",
//                   style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.lightBlue),
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => Fluttersinglelay(),
//                     ),
//                   );

//                   //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
//                 }),
//           ),

//           Container(
//             margin: EdgeInsets.all(12),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//                 color: Colors.white,
//                 elevation: 5,
//                 child: Text(
//                   "flutter multiple layout",
//                   style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.lightBlue),
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => Fluttermultilay(),
//                     ),
//                   );

//                   //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
//                 }),
//           ),

//           //   Container(

//           //    margin: EdgeInsets.all( 12),
//           //    height: 130,
//           //    decoration: BoxDecoration(
//           //      border: Border.all(
//           //        color: Colors.white,
//           //        width: 5,
//           //      )
//           //    ),
//           //     width: MediaQuery.of(context).size.width,
//           //     child: RaisedButton(
//           //       color: Colors.white,
//           //       elevation: 5,
//           //        child: Text("flutter information",style: TextStyle(
//           //      fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue    ),),
//           //       onPressed: (){

//           //        Navigator.of(context).push(MaterialPageRoute(
//           //          builder: (BuildContext context) => Flutterinformation(),
//           //                        ),
//           //                       );

//           //     //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
//           //     }),
//           //  ),

//           Container(
//             margin: EdgeInsets.all(12),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//                 color: Colors.white,
//                 elevation: 5,
//                 child: Text(
//                   "flutter dialog",
//                   style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.lightBlue),
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => Flutterdialog(),
//                     ),
//                   );

//                   //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
//                 }),
//           ),

//           Container(
//             margin: EdgeInsets.all(12),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//                 color: Colors.white,
//                 elevation: 5,
//                 child: Text(
//                   "flutter button",
//                   style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.lightBlue),
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => Flutterbuttonn(),
//                     ),
//                   );

//                   //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
//                 }),
//           ),

//           Container(
//             margin: EdgeInsets.all(12),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//                 color: Colors.white,
//                 elevation: 5,
//                 child: Text(
//                   " flutter navigation",
//                   style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.lightBlue),
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => Flutternavigation(),
//                     ),
//                   );
//                 }),
//           ),

//           Container(
//             margin: EdgeInsets.all(12),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//               onPressed: () async => await _shareText(),
//               color: Colors.white,
//               elevation: 5,
//               child: Text(
//                 "Share it...!!",
//                 style: TextStyle(
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.lightBlue),
//               ),
//             ),
//           ),

//           Container(
//             margin: EdgeInsets.all(12),
//             height: 130,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               color: Colors.white,
//               width: 5,
//             )),
//             width: MediaQuery.of(context).size.width,
//             child: RaisedButton(
//               color: Colors.white,
//               elevation: 5,
//               child: Text(
//                 " Rating the app",
//                 style: TextStyle(
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.lightBlue),
//               ),
//               onPressed: _rate,
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: FancyBottomNavigation(
//         tabs: [
//           TabData(
//               iconData: Icons.home,
//               title: "Home",
//               onclick: () {
//                 final FancyBottomNavigationState fState =
//                     bottomNavigationKey.currentState;
//                 fState.setPage(2);
//               }),
//           TabData(
//               iconData: Icons.search,
//               title: "Search",
//               onclick: () => Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) => Regi()))),
//           TabData(
//             iconData: Icons.shopping_cart,
//             title: "Basket",
//             onclick: () => Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => Regi())),
//           )
//         ],
//         initialSelection: 1,
//         key: bottomNavigationKey,
//         onTabChangedListener: (position) {
//           setState(() {
//             currentPage = position;
//           });
//         },
//       ),
//       drawer: Theme(
//           data: Theme.of(context).copyWith(
//             canvasColor: Colors.white,

//             //This will change the drawer background to blue.
//             //other styles
//           ),
//           child: Drawer(
//             elevation: 10,
//             child: ListView(
//               padding: EdgeInsets.all(10),
//               children: <Widget>[
//                 UserAccountsDrawerHeader(
//                     decoration: BoxDecoration(color: Colors.white),
//                     accountEmail: Text(
//                       ' dart & firebase',
//                       style: TextStyle(color: Colors.black, fontSize: 15),
//                     ),
//                     accountName: Text(
//                       'flutter widgets app',
//                       style: TextStyle(color: Colors.black, fontSize: 18),
//                     ),
//                     currentAccountPicture: CircleAvatar(
//                       backgroundColor: Colors.blue[50],
//                       child: FlutterLogo(
//                         size: 40,
//                       ),
//                       //backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/jeemainadvenced.appspot.com/o/yash.png?alt=media&token=73602a58-ade9-4732-9c89-0176373059b5'),
//                     )),
//                 Divider(
//                   height: 10,
//                   color: Colors.lightBlueAccent,
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 70,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => Msg(),
//                         ),
//                       );
//                     },

//                     child: ListTile(
//                         leading: FlutterLogo(
//                           size: 40,
//                         ),
//                         title: Text(
//                           " flutter backend ",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         )),
//                     //  child: Center(
//                     //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

//                     //  ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 70,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => Youtubestories(),
//                         ),
//                       );
//                     },

//                     child: ListTile(
//                         leading: Icon(
//                           Icons.video_library,
//                           size: 35,
//                           color: Colors.red,
//                         ),
//                         title: Text(
//                           " flutter vedioes ",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         )),
//                     //  child: Center(
//                     //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

//                     //  ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 70,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       createInterstitialAd()
//                         ..load()
//                         ..show();
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => MyWebView(
//                             title: " material design",
//                             selectedUrl: "https://material.io/develop/flutter/",
//                           ),
//                         ),
//                       );
//                     },

//                     child: ListTile(
//                         leading: Icon(
//                           Icons.description,
//                           size: 30,
//                           color: Colors.blue,
//                         ),
//                         title: Text(
//                           " flutter material.io ",
//                           style: TextStyle(fontSize: 19, color: Colors.black),
//                         )),
//                     //  child: Center(
//                     //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

//                     //  ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 70,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       createInterstitialAd()
//                         ..load()
//                         ..show();
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => MyWebView(
//                             title: " codelabs",
//                             selectedUrl:
//                                 "https://codelabs.developers.google.com/?cat=Flutter",
//                           ),
//                         ),
//                       );
//                     },
//                     child: ListTile(
//                         leading: Icon(
//                           Icons.code,
//                           size: 35,
//                           color: Colors.blue,
//                         ),
//                         title: Text(
//                           " flutter codelabs ",
//                           style: TextStyle(fontSize: 19, color: Colors.black),
//                         )),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       createInterstitialAd()
//                         ..load()
//                         ..show();
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => MyWebView(
//                             title: " flutter official wabsite ",
//                             //selectedUrl: "https://pub.dev/packages/firebase_storage",

//                             selectedUrl:
//                                 "https://flutter.dev/docs/development/ui/widgets",
//                           ),
//                         ),
//                       );
//                     },

//                     child: ListTile(
//                         leading: FlutterLogo(
//                           size: 40,
//                         ),
//                         title: Text(
//                           " flutter official ",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         )),
//                     //  child: Center(
//                     //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

//                     //  ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       createInterstitialAd()
//                         ..load()
//                         ..show();
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => MyWebView(
//                             title: " dartpad",
//                             //selectedUrl: "https://pub.dev/packages/firebase_storage",

//                             selectedUrl: "https://dartpad.dev/",
//                           ),
//                         ),
//                       );
//                     },

//                     child: ListTile(
//                         leading: Icon(
//                           Icons.code,
//                           size: 40,
//                           color: Colors.blueAccent,
//                         ),
//                         title: Text(
//                           " Dartpad ",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         )),
//                     //  child: Center(
//                     //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

//                     //  ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       createInterstitialAd()
//                         ..load()
//                         ..show();
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => MyWebView(
//                             title: " dart programming",
//                             //selectedUrl: "https://pub.dev/packages/firebase_storage",
//                             selectedUrl: "https://dart.dev/",
//                           ),
//                         ),
//                       );
//                     },

//                     child: ListTile(
//                         leading: FlutterLogo(
//                           size: 40,
//                         ),
//                         title: Text(
//                           " Dart programming ",
//                           style: TextStyle(fontSize: 18, color: Colors.black),
//                         )),
//                     //  child: Center(
//                     //    child: Text( "JEE SYLLABUS",style: TextStyle(fontSize:30,color: Colors.black),),

//                     //  ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       createInterstitialAd()
//                         ..load()
//                         ..show();

//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => MyWebView(
//                             title: " flutter youtube ",
//                             //selectedUrl: "https://pub.dev/packages/firebase_storage",

//                             selectedUrl: "https://www.youtube.com/flutterdev",
//                           ),
//                         ),
//                       );
//                     },
//                     child: ListTile(
//                         leading: Icon(
//                           Icons.video_library,
//                           color: Colors.redAccent,
//                           size: 35,
//                         ),
//                         title: Text(
//                           "flutter youtube",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         )),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       createInterstitialAd()
//                         ..load()
//                         ..show();
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => MyWebView(
//                             title: " flutter github ",
//                             //selectedUrl: "https://pub.dev/packages/firebase_storage",

//                             selectedUrl: "https://github.com/flutter",
//                           ),
//                         ),
//                       );
//                     },
//                     child: ListTile(
//                         leading: Icon(
//                           Icons.desktop_windows,
//                           color: Colors.black,
//                           size: 30,
//                         ),
//                         title: Text(
//                           "github",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         )),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       createInterstitialAd()
//                         ..load()
//                         ..show();
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => MyWebView(
//                             title: " flutter twitter",
//                             //selectedUrl: "https://pub.dev/packages/firebase_storage",

//                             selectedUrl: "https://twitter.com/flutterdev",
//                           ),
//                         ),
//                       );
//                     },
//                     child: ListTile(
//                         leading: Icon(
//                           Icons.insert_link,
//                           color: Colors.blueAccent,
//                           size: 30,
//                         ),
//                         title: Text(
//                           "flutter twitter",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         )),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () {
//                       createInterstitialAd()
//                         ..load()
//                         ..show();
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => MyWebView(
//                             title: " flutter package ",
//                             //selectedUrl: "https://pub.dev/packages/firebase_storage",

//                             selectedUrl: " https://pub.dev/flutter/packages",
//                           ),
//                         ),
//                       );
//                     },
//                     child: ListTile(
//                       leading: FlutterLogo(
//                         size: 40,
//                       ),
//                       title: Text(
//                         "flutter package",
//                         style: TextStyle(fontSize: 20, color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: _rate,
//                     child: Center(
//                       child: Text(
//                         "rate us app **",
//                         style: TextStyle(fontSize: 30, color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   width: MediaQuery.of(context).size.width,
//                   height: 80,
//                   child: RaisedButton(
//                     color: Colors.white,
//                     elevation: 10,
//                     onPressed: () async => await _shareText(),
//                     child: ListTile(
//                       trailing: Icon(
//                         Icons.share,
//                         color: Colors.black,
//                         size: 45,
//                       ),
//                       title: Text(
//                         "plz share the app",
//                         style: TextStyle(fontSize: 30, color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )),
//       drawerScrimColor: Colors.white,
//       floatingActionButton: Align(
//         alignment: Alignment(1.1, .8),
//         child: FloatingActionButton.extended(
//           foregroundColor: Colors.orange[100],
//           clipBehavior: Clip.antiAlias,
//           label: Text(
//             ' firebase',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//           backgroundColor: Colors.orangeAccent,
//           elevation: 10,
//           focusColor: Colors.orange[100],
//           //icon: Icon(icon),
//           onPressed: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => Tabbar()));
//           },
//         ),
//       ),),)
//     );
//   }
// }

// class MyWebView extends StatelessWidget {
//   final String title;
//   final String selectedUrl;
//   MyWebView({
//     @required this.title,
//     @required this.selectedUrl,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: WebviewScaffold(
//             url: selectedUrl,
//             withJavascript: true,
//             withZoom: true,
//             hidden: true,
//             initialChild: Container(
//               child: Center(
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 350,
//                     ),
//                     Image.asset(" assets/load.gif"),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       " waiting.....",
//                       style:
//                           TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//               ),
//             )),
//       ),
//     );
//   }
// }

// Future<void> _shareText() async {
//   try {
//     Share.text(
//         'flutter all widgets',
//         'flutter all widgets https://play.google.com/store/apps/details?id=com.yashoo.flutterallwidgets',
//         'text/plain');
//   } catch (e) {
//     print('error: $e');
//   }
// }

// _rate() async {
//   const url =
//       'https://play.google.com/store/apps/details?id=com.yashoo.flutterallwidgets';
//   if ((url) != null) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
