

import 'package:flutter/material.dart';  
  
 class ScaleAnimation extends StatefulWidget {
  @override
  _ScaleAnimationState createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds:1),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,size: 22,), 
      onPressed: (){
        Navigator.of(context).pop();
      }),
         backgroundColor: Colors.white,
         centerTitle: true,
        title: Text("Scale Animation",style: TextStyle(
          color: Colors.black,
        ),
        )
        ),
      body:  Column(
            children: <Widget>[

              Container(
          child: ScaleTransition(
            scale: animation,
            child: Container(

              margin: EdgeInsets.fromLTRB( 80, 100, 0, 0),
              height: 180,
              width: 180,
              child: Container(
                child: FlutterLogo(size: 170,)),
            ),
          ),
        ),
          

             Container(
              margin: EdgeInsets.fromLTRB( 90, 130, 0, 0),
              width: 230,
              height: 50,
              child: RaisedButton(
                elevation: 10,
                color: Colors.white,
                child: Text(
                   'Source Code here ..!',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ),

            ],
      ),
    );
  }
    }