import 'package:flutter/material.dart';



import 'package:widget_with_codeview/widget_with_codeview.dart';
class Pageview extends StatefulWidget {
  @override
  _PageviewState createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar( 
          leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
         actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed:(){
                                         Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

           })
         ],
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" PageView",style: TextStyle(color: Colors.black),),
         ),

      body: PageView(
        children: <Widget>[
          Container(
            child: Center(child:Text("Page 1 slide horizontal")),
            color: Colors.red,

          ),
          Container(
            child: Center(child:Text("Page 2")),
            color: Colors.blueAccent,
          ),
          Container(
            child: Center(child:Text("Page 3")),
            color: Colors.redAccent,
          ),
          Container(
            child: Center(child:Text("Page 4")),
            color: Colors.blueAccent,
          )
        ],
        pageSnapping: false,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
      ),
    );
    
      }
}











// import 'package:flutter/material.dart';
 
// void main() => runApp(MyApp());
 
// class MyApp extends StatelessWidget {
 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     home: Scaffold(
//         body: Page()
//        )
//       );
//   }
// }
 
// class Page extends StatefulWidget {
 
//   PageState createState() => PageState();
 
// }
 
// class PageState extends State<Page>{
 
// final controller = PageController(
//     initialPage: 0,
//   );
 
//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
//      appBar: AppBar(
//      title: Text('PageView Widget in Flutter')),
//      body: Center(child:
//             PageView(
//             controller: controller,
//             onPageChanged: (page)=>{ print(page.toString()) },
//             pageSnapping: true,
//             scrollDirection: Axis.horizontal,
//             children: <Widget>[
//               Container(
//                 color: Colors.pink,
//                 child: Center(
//                     child: Text('This is Widget 1',
//                       style: TextStyle(fontSize: 25,
//                       color: Colors.white),))
//                 ),
 
//               Container(
//                 color: Colors.green,
//                 child: Center(
//                     child: Text('This is Widget - 2',
//                       style: TextStyle(fontSize: 25,
//                       color: Colors.white),))
//                 ),
 
//               Container(
//                 color: Colors.lightBlue,
//                 child: Center(
//                     child: Text('This is Widget - 3',
//                       style: TextStyle(fontSize: 25,
//                       color: Colors.white),))
//                 ),
             
//             ],
//           ),
 
//         )
//   );
//   }
// }



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
  sourceFilePath: 'lib/fscrolling/pageview.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/fscrolling/pageview.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Pageview());
    }
  }
 
 