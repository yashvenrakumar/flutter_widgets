import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:firebase_admob/firebase_admob.dart';

class Dropdownload extends StatefulWidget {
  @override
  _DropdownloadState createState() => _DropdownloadState();
}

class _DropdownloadState extends State<Dropdownload> {
  List _fruits = ["Apple", "Banana", "Pineapple", "Mango", "Grapes", "Orange"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedFruit;

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = List();
    for (String fruit in fruits) {
      items.add(DropdownMenuItem(value: fruit, child: Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String selectedFruit) {
    setState(() {
      _selectedFruit = selectedFruit;
    });
  }

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
    _dropDownMenuItems = buildAndGetDropDownMenuItems(_fruits);
    _selectedFruit = _dropDownMenuItems[0].value;
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
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "DropDownButton",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Please choose a fruit: "),
            DropdownButton(
              value: _selectedFruit,
              items: _dropDownMenuItems,
              onChanged: changedDropDownItem,
            ),
            Container(
              width: 220,
              height: 50,
              margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
              child: RaisedButton(
                  elevation: 10,
                  color: Colors.white,
                  child: Text(
                    " Source code here !",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {
                    createInterstitialAd()
                      ..load()
                      ..show();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Codeview()));
                  }),
            )
          ],
        )),
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
        sourceFilePath: 'lib/button/bropdownbutton.dart',
        codeLinkPrefix:
            'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/button/bropdownbutton.dart',
      ),
    );
  }
}

class MyAwesomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Dropdownload());
  }
}
