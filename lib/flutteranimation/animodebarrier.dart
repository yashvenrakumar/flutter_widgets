import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
class AnimatedModalBarrierPage extends StatefulWidget {
  static const routeName = 'AnimatedModalBarrier';

  @override
  _AnimatedModalBarrierPageState createState() {
    return _AnimatedModalBarrierPageState();
  }
}

class _AnimatedModalBarrierPageState extends State<AnimatedModalBarrierPage> {
  var _dismissible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
        centerTitle: true,
        backgroundColor: Colors.white,

        title: Text(" AnimatedModalBarrier",style: TextStyle(color: Colors.black),),
      ),
            

       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: const Text('Open Modal View'),
              onPressed: () {
                Navigator.of(context).push(MyPageRoute(
                  page: _ModalPage(),
                  dismissible: _dismissible,
                ));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('dismissible'),
                Switch(
                  onChanged: (value) {
                    setState(() {
                      _dismissible = value;
                    });
                  },
                  value: _dismissible,
                ),
              ],
            ),
             

              Container(
          margin: EdgeInsets.fromLTRB( 0,200, 0, 0),
          width: 210,
          height: 50,
          child: RaisedButton(
          color: Colors.white,
          elevation: 10,
            onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));
          },
          child: Text(" Source code here !",style: TextStyle(fontSize: 20),),
           ),
        )
            
          ],
        ),
      ),
    );
  }
}

class MyPageRoute extends TransitionRoute {
  MyPageRoute({
    @required this.page,
    @required this.dismissible,
  });

  final Widget page;
  final bool dismissible;

  @override
  Iterable<OverlayEntry> createOverlayEntries() {
    return [
      OverlayEntry(builder: _buildModalBarrier),
      OverlayEntry(builder: (context) => Center(child: page))
    ];
  }

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  Widget _buildModalBarrier(BuildContext context) {
    return IgnorePointer(
      ignoring: animation.status ==
              AnimationStatus
                  .reverse || // changedInternalState is called when this updates
          animation.status ==
              AnimationStatus
                  .dismissed, // dismissed is possible when doing a manual pop gesture
      child: AnimatedModalBarrier(
        color: animation.drive(
          ColorTween(
            begin: Colors.transparent,
            end: Colors.black.withAlpha(80),
          ),
        ),
        dismissible: dismissible,
      ),
    );
  }
}

class _ModalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('animatedmodalbarrierr demo'),
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Center(child: Text(" modelbarrier demo"))
              ),
            const SizedBox(height: 8),
            RaisedButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
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
    return  SafeArea(
      child: WidgetWithCodeView(
  child: MyAwesomeWidget(),
  sourceFilePath: 'lib/dialog/alertdialog.dart',
  codeLinkPrefix: ' https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/flutteranimation/animodebarrier.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: AnimatedModalBarrierPage());
    }
  }
 
 