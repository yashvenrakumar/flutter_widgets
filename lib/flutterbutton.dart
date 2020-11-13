import 'package:flutter/material.dart';

import 'button/bropdownbutton.dart';
import 'button/buttonnbar.dart';
import 'button/flatbuttton.dart';
import 'button/iconbutton.dart';
import 'button/popupmenubutton.dart';
import 'button/raishedbutton.dart';

class Flutterbuttonn extends StatefulWidget {
  @override
  _FlutterbuttonnState createState() => _FlutterbuttonnState();
}

class _FlutterbuttonnState extends State<Flutterbuttonn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          backgroundColor: Colors.white,
          elevation: 0,
          expandedHeight: 200,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'flutter Button',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            background: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/flutterwithfirebase-9d09c.appspot.com/o/flutter2.png?alt=media&token=cde940ee-2146-4be8-a53a-e5beee31a588',
              fit: BoxFit.contain,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => ButtonDemo(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter RaiseButton',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  //  Navigator.of(context).push(MaterialPageRoute(
                  //  builder: (BuildContext context) => FancyFab(),
                  //  ),
                  // );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter FloatingActionButton',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Flatbutton(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter  FlatButton',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Iconbutton(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter IconButton',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Dropdownload(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter DropdownButton',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => PoPupmenubutton(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter PopupMenuButton',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Buttonbar(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue[100], Colors.white])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Flutter ButtonBar',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
