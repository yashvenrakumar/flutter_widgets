import 'package:flutter/material.dart';
 
class Notificationlist extends StatefulWidget {
  @override
  _NotificationlistState createState() => _NotificationlistState();
}

class _NotificationlistState extends State<Notificationlist> {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < 100; i++) list.add(buildContainer());
    return Scaffold(
     appBar: AppBar( 
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" notificationlistner",style: TextStyle(color: Colors.black),),
         ),
        body: ListView(children: list));
  }

  Widget buildContainer() {
    ScrollController _scrollController = ScrollController();

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollState) {
        if (scrollState is ScrollEndNotification && scrollState.metrics.pixels != 160) {
          Future.delayed(const Duration(milliseconds: 100), () {}).then((s) {
            _scrollController.animateTo(160,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          });
        }
        return false;
      },
      child: Container(
        height: 160,
        margin: EdgeInsets.only(bottom: 1),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          children: <Widget>[
            Container(
              width: 300,
              height: 120,
              color: Colors.red,
            ),
            Container(
              width: 160,
              height: 20,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}








// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//     home: MyHomePage(),
//   ); 
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   static bool _onEndScroll(ScrollNotification notification) {
//     if (notification is ScrollEndNotification ) { // if this is changed to ScrollStartNotification the result is the same which it should not be. ScrollEndNotification and ScrollStartNotification should only occur once in one scroll direction.
//       print(true); // should only print true once when reaching the end of the list
//     }
//     return true;
//   }
  
//   @override
//   Widget build(BuildContext context) => Scaffold(
//     body: NotificationListener<ScrollNotification>(
//       onNotification: (ScrollNotification notification) => _onEndScroll(notification),
//       child: SingleChildScrollView(
//         child:  Column(
//           children: List.filled(30, null)
//             .map((_) => Container(
//               margin: EdgeInsets.all(20),
//               height: 100,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.red, width: 1.5),
//                 borderRadius:
//                 const BorderRadius.all(Radius.circular(4.0)),
//               ),
//               child: Center(
//                 child: Text('Hello'),
//               ),
//           ),).toList(),
//   ),),),);
// }