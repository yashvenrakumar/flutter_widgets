import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class Slidetransition extends StatefulWidget {
  @override
  _SlidetransitionState createState() => _SlidetransitionState();
}

class _SlidetransitionState extends State<Slidetransition>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

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

    // ignore: missing_required_param
    // ignore: missing_required_param
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
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
    _controller.dispose();

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
        elevation: 5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'SlideTransition Widget',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SlideTransition(
            position: _offsetAnimation,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
              child: FlutterLogo(size: 150.0),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            width: 200,
            height: 50,
            child: RaisedButton(
              elevation: 10,
              color: Colors.white,
              child: Text(
                'Source Code',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Codeview()));
              },
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
        sourceFilePath: 'lib/flutteranimation/slidetrantion.dart',
        codeLinkPrefix:
            'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/flutteranimation/sidetrantion.dart',
      ),
    );
  }
}

class MyAwesomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Slidetransition());
  }
}
