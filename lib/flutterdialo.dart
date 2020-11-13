import 'package:flutter/material.dart';

import 'dialog/alertdialog.dart';
import 'dialog/bottomsheet.dart';
import 'dialog/customalert.dart';
import 'dialog/expansionpannel.dart';
import 'dialog/snackbar.dart';

class Flutterdialog extends StatefulWidget {
  @override
  _FlutterdialogState createState() => _FlutterdialogState();
}

class _FlutterdialogState extends State<Flutterdialog> {
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
              'flutter Dialog',
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
                      builder: (BuildContext context) => Alertdialogg(),
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
                      'Flutter customDialog',
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
                      builder: (BuildContext context) => Alertdialog(),
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
                      'Flutter AlertDialog',
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
                      builder: (BuildContext context) => Bottomsheet(),
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
                      'Flutter BottomSheet',
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
                      builder: (BuildContext context) => Expansionpannel(),
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
                      'Flutter ExpansionPanel',
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
                      builder: (BuildContext context) => Snakbar(),
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
                      'FlutterSnackBar',
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
