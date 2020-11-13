import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class RotationTransitio extends StatefulWidget {
  @override
  _RotationTransitioState createState() => _RotationTransitioState();
}

class _RotationTransitioState extends State<RotationTransitio>
    with SingleTickerProviderStateMixin {
  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 3,
  );

  AnimationController _controller;

  bool _first = true;

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

    _controller = AnimationController(
      vsync: this,
      //vsync: null,

      duration: const Duration(seconds: 1),
    );
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
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 22,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "RotationTransition",
            style: TextStyle(
              color: Colors.black,
            ),
          )),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              if (_first) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
              _first = !_first;
            },
            child: RotationTransition(
              turns: turnsTween.animate(_controller),
              child: Container(
                child: Container(
                  width: 200,
                  height: 200,
                  child: FlutterLogo(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: RaisedButton(
              elevation: 5,
              color: Colors.white,
              onPressed: () {
                if (_first) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
                _first = !_first;
              },
              child: Text(
                "Click or touch flutter logo",
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 130, 0, 0),
              width: 230,
              height: 50,
              child: RaisedButton(
                elevation: 10,
                color: Colors.white,
                child: Text(
                  'Source Code here ..!',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Codeview()));
                },
              ),
            ),
          ),
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
    return SafeArea(
      child: WidgetWithCodeView(
        child: MyAwesomeWidget(),
        sourceFilePath: 'lib/flutteranimation/rotaionaltransition.dart',
        codeLinkPrefix:
            'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/flutteranimation/rotaionaltransition.dart',
      ),
    );
  }
}

class MyAwesomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: RotationTransitio());
  }
}
