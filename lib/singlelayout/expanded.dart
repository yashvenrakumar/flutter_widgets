import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

           })
         ],
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" Expended",style: TextStyle(color: Colors.black),),
         ),
          body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.deepOrange,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
              ),
            ),
            Container(
              height: 100,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}












// import 'package:flutter/material.dart';

// class ExpandedExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       child: Row(
//         children: <Widget>[
//           Container(
//             width: 60,
//             color: Colors.deepOrange,
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: Colors.green,
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               color: Colors.black,
//             ),
//           ),
//           Container(
//             width: 60,
//             color: Colors.deepPurple,
//           ),
//         ],
//       ),
//     );
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
  sourceFilePath: 'lib/singlelayout/expanded.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/expanded.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: ExpandedExample());
    }
  }
 
 