import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class FancyFab extends StatefulWidget {
  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  FancyFab({this.onPressed, this.tooltip, this.icon});

  @override
  _FancyFabState createState() => _FancyFabState();
}

class _FancyFabState extends State<FancyFab>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
 // Curve _curve = Curves.easeOut;

  @override
  initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget add() {
    return new Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget image() {
    return new Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Image',
        child: Icon(Icons.image),
      ),
    );
  }

  Widget inbox() {
    return new Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Inbox',
        child: Icon(Icons.inbox),
      ),
    );
  }

  Widget toggle() {
    return new Container(
      child: FloatingActionButton(
        backgroundColor: _buttonColor.value,
        onPressed: animate,
        tooltip: 'Toggle',
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animateIcon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('FloatingActionbutton',style: TextStyle(color: Colors.black),),
          ),
          body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          add(),
          image(),
          inbox(),
          toggle(),
            Container(
          width: 220,
          height: 50,
          margin: EdgeInsets.fromLTRB( 0, 150, 0,0),
          child: RaisedButton(
            elevation: 10,
            color: Colors.white,
            child: Text(" Source code here !",style: TextStyle(
          color: Colors.black, fontSize: 20),),

            onPressed:(){
            Navigator.of(context).push( MaterialPageRoute(builder: (context)=>Codeview()));
          }),
        )
        ],
      ),
    );
  }
}











// class MyApp extends StatefulWidget {
//   @override
//   _State createState() => new _State();
// }
// ​
// //State is information of the application that can change over time or when some actions are taken.
// class _State extends State<MyApp>{
// ​
//   String _value = '';
//   void _onClicked() => setState(() => _value = new DateTime.now().toString());
// ​
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Name here'),
//         backgroundColor: Colors.red,
//       ),
//       floatingActionButton: new FloatingActionButton(
//           onPressed: _onClicked,
//           backgroundColor: Colors.red,
//           //if you set mini to true then it will make your floating button small
//           mini: false,
//           child: new Icon(Icons.timer),
//       ),
//       //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
//       body: new Container(
//         padding: new EdgeInsets.all(32.0),
//         child: new Center(
//           child: new Column(
//             children: <Widget>[
//               new Text(_value)
//             ],
//           ),
//         ),
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
  sourceFilePath: 'lib/button/floatingactionbutt.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/button/floatingactionbutt.dart',
      ),
      
    );
  }
}


class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: FancyFab());
    }
  }