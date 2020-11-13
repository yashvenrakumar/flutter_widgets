import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'firebaesorce.dart';
import 'flutterpub.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            "Flutter with Firebase",
            style: TextStyle(color: Colors.black),
          )),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: new FlutterLogo(
                  size: 40,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.code,
                  size: 40,
                ),
              ),
            ],
            labelPadding: EdgeInsets.all(14),
            //dragStartBehavior: DragStartBehavior.start,
            //isScrollable: true,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.blue[400],
            indicatorSize: TabBarIndicatorSize.tab,
            // indicatorPadding: EdgeInsets.all(15.0),
            indicatorColor: Colors.blue,
            indicatorWeight: 5,
            //indicator:
          ),
        ),
        body: TabBarView(children: <Widget>[
          // Flutterfire(),
          Fltterpub(),
          Flutfiesor(),
        ]),
      ),
    );
  }
}

class Flutterfire extends StatefulWidget {
  @override
  _FlutterfireState createState() => _FlutterfireState();
}

class _FlutterfireState extends State<Flutterfire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //      builder: (BuildContext context) => Develop(),));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orangeAccent,
                      offset: Offset(11.1, -12.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.orange[600], Colors.orange[100]])),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'flutter firebase develop',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          RaisedButton(
            elevation: 5,
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //      builder: (BuildContext context) => Quality(),));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orangeAccent,
                      offset: Offset(11.1, -12.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.orange[600], Colors.orange[100]])),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Flutter firebase Quality',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //      builder: (BuildContext context) => Analytic(),));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 160,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orangeAccent,
                      offset: Offset(11.1, -12.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.orange[600], Colors.orange[100]])),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Flutter firebase Analytics',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //      builder: (BuildContext context) => Floww(),));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orangeAccent,
                      offset: Offset(11.1, -12.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.orange[600], Colors.orange[100]])),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Flutter firebase Grow',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
