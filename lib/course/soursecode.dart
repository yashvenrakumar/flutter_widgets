import 'package:flutter/material.dart';
import 'package:flutterallwidgets/course/googlemap/samplemap/simplemap.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

// ignore: must_be_immutable
class Codeview extends StatefulWidget {
  String code;
  Codeview(this.code);
  @override
  _CodeviewState createState() => _CodeviewState();
}

class _CodeviewState extends State<Codeview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WidgetWithCodeView(
        child: SimpleMap(),
        sourceFilePath: widget.code,

        /// codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/button/buttonnbar.dart',
      ),
    );
  }
}

// class MyAwesomeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(

//       child: SimpleMap()
//       );
//   }
// }
