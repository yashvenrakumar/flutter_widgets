// import 'package:flutter/material.dart';
// import 'package:firebase_admob/firebase_admob.dart';
// import 'package:widget_with_codeview/widget_with_codeview.dart';

// class Nestedscroll extends StatefulWidget {
//   @override
//   _NestedscrollState createState() => _NestedscrollState();
// }

// class _NestedscrollState extends State<Nestedscroll> {
//    List<String> _tabs = ['One', 'Two', 'Three'];

//    static final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
//     testDevices: <String>[],
//     keywords: <String>['software','web development','app development','java ', 'python','machine learning' ,'data science','robotics','mathematics','physics','technology','college' 'microsoft'],

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

//    @override
//   void initState() {

//     super.initState();
//     FirebaseAdMob.instance
//         .initialize(appId: "ca-app-pub-3032113909807052~8795083036");
//     _bannerAd = createBannerAd()
//       ..load()
//       ..show();

//   }

//   @override
//   void dispose() {
//     _bannerAd?.dispose();
//     _interstitialAd?.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {

//      return  Scaffold(
//         appBar: AppBar(
//           actions: <Widget>[
//                 IconButton(icon: Icon( Icons.code, color: Colors.black, size: 40,),
//                 onPressed: (){

//                                 createInterstitialAd()..load()..show();

//                             Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

//                 })],

//          leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
//           size: 30,
//           ), onPressed:(){
//             Navigator.of(context).pop();
//           }),
//            centerTitle: true,
//            backgroundColor: Colors.white,
//            title: Text("nestedscrollview",style: TextStyle(color: Colors.black),),
//          ),

//             body: DefaultTabController(
//   length: _tabs.length, // This is the number of tabs.
//   child: NestedScrollView(
//     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//         // These are the slivers that show up in the "outer" scroll view.
//         return <Widget>[
//           SliverOverlapAbsorber(
//               handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
//             child: SliverAppBar(
//                leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
//           size: 30,
//           ), onPressed:(){
//             Navigator.of(context).pop();
//           }),
//                backgroundColor: Colors.white,
//               actions: <Widget>[
//                 IconButton(icon: Icon( Icons.code,size: 40,color: Colors.black,),
//                  onPressed: (){
//                    Navigator.of(context).pop();
//                  })
//               ],
//               title: const Text('Nestedscrollview', style: TextStyle(

//                 color:Colors.black ),), // This is the title in the app bar.
//               pinned: true,
//               expandedHeight: 150.0,

//               forceElevated: innerBoxIsScrolled,
//               bottom: TabBar(
//                 indicatorColor: Colors.black,
//                 labelColor: Colors.black,
//                  tabs: _tabs.map((String name) => Tab(text: name)).toList(),
//               ),
//             ),
//           ),
//         ];
//     },
//     body: TabBarView(
//          children: _tabs.map((String name) {
//           return SafeArea(
//             top: false,
//             bottom: false,
//             child: Builder(

//               builder: (BuildContext context) {
//                 return CustomScrollView(

//                   key: PageStorageKey<String>(name),
//                   slivers: <Widget>[
//                     SliverOverlapInjector(
//                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
//                     ),
//                     SliverPadding(
//                       padding: const EdgeInsets.all(8.0),

//                       sliver: SliverFixedExtentList(

//                         itemExtent: 48.0,
//                         delegate: SliverChildBuilderDelegate(
//                           (BuildContext context, int index) {
//                                            return ListTile(
//                               title: Text('Item $index',style: TextStyle(
//                                 color: Colors.black
//                               ),),
//                             );
//                           },
//                           childCount: 30,
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           );
//         }).toList(),
//     ),
//   ),
// ),
//      );
//   }
// }

// class Codeview extends StatefulWidget {
//   @override
//   _CodeviewState createState() => _CodeviewState();
// }

// class _CodeviewState extends State<Codeview> {
//   @override
//   Widget build(BuildContext context) {
//     return  SafeArea(
//       child: WidgetWithCodeView(
//   child: MyAwesomeWidget(),
//   sourceFilePath: 'lib/fscrolling/nestedscrollview.dart',
//   codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fscrolling/nestedscrollview.dart',
//       ),

//     );
//   }
// }

//   class MyAwesomeWidget extends StatelessWidget {
//     @override
//     Widget build(BuildContext context) {
//       return  SafeArea(
//         child: Nestedscroll());
//     }
//   }
