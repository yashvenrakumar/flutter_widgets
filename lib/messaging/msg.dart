import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutterallwidgets/messaging/fluttscreen.dart';

class Msg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MsgState();
  }
}

class _MsgState extends State<Msg> {
  // ignore: unused_field
  String _message = '';

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  void getMessage() {
    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
      print('on message $message');
      setState(() => _message = message["notification"]["title"]);
    }, onResume: (Map<String, dynamic> message) async {
      print('on resume $message');
      setState(() => _message = message["notification"]["title"]);
    }, onLaunch: (Map<String, dynamic> message) async {
      print('on launch $message');
      setState(() => _message = message["notification"]["title"]);
    });
  }

  _register() {
    _firebaseMessaging.getToken().then((token) => print(token));
  }

  StreamSubscription<List<PurchaseDetails>> _subscription1;

  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> flutterupdate;
  final CollectionReference collectionReference =
      Firestore.instance.collection("flutter");

  @override
  void initState() {
    super.initState();

    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        flutterupdate = datasnapshot.documents;
      });
    });

    getMessage();
    final Stream purchaseUpdates =
        InAppPurchaseConnection.instance.purchaseUpdatedStream;
    _subscription1 = purchaseUpdates.listen((purchases) {});
  }

  @override
  void dispose() {
    subscription?.cancel();
    _subscription1.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Flutter Backend Post',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: flutterupdate != null
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: flutterupdate.length,
                  itemBuilder: (context, i) {
                    String imgPath = flutterupdate[i].data['url'];
                    String tagg = flutterupdate[i].data['tag'];
                    String title = flutterupdate[i].data['title'];
                    String name = flutterupdate[i].data['name'];
                    String link = flutterupdate[i].data['link'];

                    return Card(
                      elevation: 3,
                      child: FlatButton(
                        onPressed: () {
                          _register();
                          getMessage();

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FullScreenImagePage(
                                  imgPath, link, name, tagg, title)));
                        },
                        child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  margin: EdgeInsets.all(4),
                                  width: MediaQuery.of(context).size.width,
                                  height: 150,
                                  child: new InkWell(
                                    onTap: () {
                                      getMessage();
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FullScreenImagePage(
                                                      imgPath,
                                                      link,
                                                      name,
                                                      tagg,
                                                      title)));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: new Hero(
                                        tag: imgPath,
                                        child: new FadeInImage(
                                          image: new NetworkImage(imgPath),
                                          fit: BoxFit.cover,
                                          placeholder:
                                              new AssetImage("assets/load.gif"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: EdgeInsets.all(7),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.blue[100],
                                    backgroundImage: NetworkImage(tagg),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width,
                                  height: 96,
                                  child: Center(
                                    child: Text(
                                      title,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : new Center(
                  child: new CircularProgressIndicator(),
                )),
    );
  }
}
