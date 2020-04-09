import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  _AnimatedOpacityWidgetState createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opacityLevel = 1.0;
  String buttonText = "Fade Out";
 
  @override
  Widget build(BuildContext context) {
   
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
            elevation: 5,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'AnimatedOpacity Widget',
              style: TextStyle(
                color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                   ),
            ),
            
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds: 2),
                child: FlutterLogo(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              child: Text("Opacity Value - ${opacityLevel.floorToDouble()}"),
            ),
            Container(
              width: 200,
              height: 50,
              child: RaisedButton(
                elevation: 10,
                color: Colors.white,
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: _changeOpacity,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB( 0, 30, 0, 0),
              width: 200,
              height: 50,
              child: RaisedButton(
                elevation: 10,
                color: Colors.white,
                child: Text(
                   'Source Code',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: _changeOpacity,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeOpacity() {
    setState(() {
      opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
      buttonText = buttonText == "Fade Out" ? "Fade In" : "Fade Out";
    });
  }
}