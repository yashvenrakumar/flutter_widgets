import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterallwidgets/firebasee/fireba.dart';
import 'package:flutterallwidgets/flutteranimatio.dart';
import 'package:flutterallwidgets/flutterbutton.dart';
import 'package:flutterallwidgets/flutterdialo.dart';
import 'package:flutterallwidgets/fluttermultilay.dart';
import 'package:flutterallwidgets/flutternavigation.dart';
import 'package:flutterallwidgets/flutterpainting.dart';
import 'package:flutterallwidgets/flutterscrolling.dart';
import 'package:flutterallwidgets/fluttersinglelay.dart';
import 'package:flutterallwidgets/messaging/fluttscreen.dart';
import 'package:flutterallwidgets/messaging/msg.dart';
import 'package:flutterallwidgets/paidcourse/registration.dart';
// ignore: unused_import
import 'package:flutterallwidgets/plugin.dart';
import 'package:flutterallwidgets/you/youtube.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

import 'dart:async';
import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';

const String testDevice = 'RMX1811';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void playYoutubeVideo(String urll) {
    FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: "AIzaSyBRaaQpUkMVw5pHJIFbHk0PyjCCluW52cc",
        videoUrl: urll,
        backgroundColor: Colors.blue[50],
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
  }

  @override
  void dispose() {
    subscription?.cancel();
    subscription1?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 160,
            child: Carousel(
              boxFit: BoxFit.fill,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 8.0,
              dotIncreasedColor: Colors.blue,
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotVerticalPadding: 10.0,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: [
                ExactAssetImage("assets/flu.png"),
                ExactAssetImage("assets/flu1.png"),
                ExactAssetImage("assets/flu2.png"),
                ExactAssetImage("assets/flu3.png"),
                ExactAssetImage("assets/flu4.png"),
                ExactAssetImage("assets/flu5.png"),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Regi()));
            },
            child: Container(
              margin: EdgeInsets.all(5),
              height: 100,
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue[50], Colors.white])),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Center(
                        child: Text(
                      "Register Now For Learning in Practical Ways",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 25,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Youtubestories()));
              },
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 20,
                ),
                title: Text(
                  "videos for concepts of flutter",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 170,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: flutterupdate1.length,
                itemBuilder: (context, i) {
                  String imgPath = flutterupdate1[i].data['url'];
                  String urll = flutterupdate1[i].data['link'];
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: 270,
                    height: MediaQuery.of(context).size.height,
                    child: new InkWell(
                      onTap: () {
                        playYoutubeVideo(urll);
                      },
                      child: new Hero(
                        tag: imgPath,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: new FadeInImage(
                            image: new NetworkImage(imgPath),
                            fit: BoxFit.cover,
                            placeholder: new AssetImage("assets/load.gif"),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),

          SizedBox(
            height: 40,
            child: FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Msg()));
                },
                child: ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Text(
                    'Recent Post',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
            child: flutterupdate != null
                ? Container(
                    height: 210,
                    color: Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: flutterupdate.length,
                        itemBuilder: (context, i) {
                          String imgPath = flutterupdate[i].data['url'];
                          String tagg = flutterupdate[i].data['tag'];
                          String title = flutterupdate[i].data['title'];
                          String name = flutterupdate[i].data['name'];
                          String link = flutterupdate[i].data['link'];

                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FullScreenImagePage(
                                      imgPath, link, name, tagg, title)));
                            },
                            child: Container(
                              color: Colors.white,
                              height: 230,
                              width: 340,
                              child: Stack(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      margin: EdgeInsets.all(4),
                                      width: MediaQuery.of(context).size.width,
                                      height: 150,
                                      child: new InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FullScreenImagePage(
                                                          imgPath,
                                                          link,
                                                          name,
                                                          tagg,
                                                          title)));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: new Hero(
                                            tag: imgPath,
                                            child: new FadeInImage(
                                              image: new NetworkImage(imgPath),
                                              fit: BoxFit.cover,
                                              placeholder: new AssetImage(
                                                  "assets/load.gif"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: EdgeInsets.all(7),
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
                                      margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width,
                                      height: 70,
                                      child: Center(
                                        child: Text(
                                          title,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                : new Center(
                    child: new CircularProgressIndicator(),
                  ),
          ),

          Container(
            // decoration: BoxDecoration(
            //     gradient:
            //         LinearGradient(colors: [Colors.blue[50], Colors.white])),
            child: Container(
              margin: EdgeInsets.all(12),
              height: 130,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.white,
                width: 5,
              )),
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                  color: Colors.white,
                  elevation: 5,
                  child: Text(
                    "fluter animation ",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue),
                  ),
                  onPressed: () {
                    //reateInterstitialAd()..load()..show();

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => FlutterAnimatio(),
                      ),
                    );

                    //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                  }),
            ),
          ),

          Container(
            margin: EdgeInsets.all(12),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
                color: Colors.white,
                elevation: 5,
                child: Text(
                  "flutter painting & effects",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => FlutterPainting(),
                    ),
                  );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                }),
          ),

          Container(
            margin: EdgeInsets.all(10),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
                color: Colors.white,
                elevation: 5,
                child: Text("flutter scrolling",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Flutterscrolling(),
                    ),
                  );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                }),
          ),

          Container(
            margin: EdgeInsets.all(12),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
                color: Colors.white,
                elevation: 5,
                child: Text(
                  "flutter single layout",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Fluttersinglelay(),
                    ),
                  );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                }),
          ),

          Container(
            margin: EdgeInsets.all(12),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
                color: Colors.white,
                elevation: 5,
                child: Text(
                  "flutter multiple layout",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Fluttermultilay(),
                    ),
                  );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                }),
          ),

          //   Container(

          //    margin: EdgeInsets.all( 12),
          //    height: 130,
          //    decoration: BoxDecoration(
          //      border: Border.all(
          //        color: Colors.white,
          //        width: 5,
          //      )
          //    ),
          //     width: MediaQuery.of(context).size.width,
          //     child: RaisedButton(
          //       color: Colors.white,
          //       elevation: 5,
          //        child: Text("flutter information",style: TextStyle(
          //      fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlue    ),),
          //       onPressed: (){

          //        Navigator.of(context).push(MaterialPageRoute(
          //          builder: (BuildContext context) => Flutterinformation(),
          //                        ),
          //                       );

          //     //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
          //     }),
          //  ),

          Container(
            margin: EdgeInsets.all(12),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
                color: Colors.white,
                elevation: 5,
                child: Text(
                  "flutter dialog",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Flutterdialog(),
                    ),
                  );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                }),
          ),

          Container(
            margin: EdgeInsets.all(12),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
                color: Colors.white,
                elevation: 5,
                child: Text(
                  "flutter button",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Flutterbuttonn(),
                    ),
                  );

                  //  Navigator.of(context).pushNamed( MaterialPageRoute(builder:  context()=))
                }),
          ),

          Container(
            margin: EdgeInsets.all(12),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
                color: Colors.white,
                elevation: 5,
                child: Text(
                  " flutter navigation",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Flutternavigation(),
                    ),
                  );
                }),
          ),

          Container(
            margin: EdgeInsets.all(12),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              onPressed: () async => await _shareText(),
              color: Colors.white,
              elevation: 5,
              child: Text(
                "Share it...!!",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(12),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              color: Colors.white,
              elevation: 5,
              child: Text(
                " Rating the app",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
              onPressed: _rate,
            ),
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment(1.1, .8),
        child: FloatingActionButton.extended(
          foregroundColor: Colors.orange[100],
          clipBehavior: Clip.antiAlias,
          label: Text(
            ' firebase',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: Colors.orangeAccent,
          elevation: 10,
          focusColor: Colors.orange[100],
          //icon: Icon(icon),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Tabbar()));
          },
        ),
      ),
    );
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
