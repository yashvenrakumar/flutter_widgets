import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'dart:async';

class Youtubestories extends StatefulWidget {
  @override
  _YoutubestoriesState createState() => _YoutubestoriesState();
}

class _YoutubestoriesState extends State<Youtubestories> {
  void playYoutubeVideo(String urll) {
    FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: "AIzaSyDv6iiYBX34k78n397Tw0fGK0h4RGi9jMk",
        videoUrl: urll,
        backgroundColor: Colors.white,
        appBarColor: Colors.black45,
        fullScreen: true,
        autoPlay: true);
  }

  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> wallpapersList;
  final CollectionReference collectionReference =
      Firestore.instance.collection("youtube");

  @override
  void initState() {
    super.initState();

    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        wallpapersList = datasnapshot.documents;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: wallpapersList.length,
          itemBuilder: (context, int i) {
            String imgPath = wallpapersList[i].data['url'];
            String namee = wallpapersList[i].data['name'];
            String urll = wallpapersList[i].data['link'];
            return Card(
              elevation: 2,
              child: Container(
                child: InkWell(
                  onTap: () {
                    playYoutubeVideo(urll);
                  },
                  child: Container(
                    height: 280,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Hero(
                              tag: imgPath,
                              child: FadeInImage(
                                placeholder: AssetImage("assets/load.gif "),
                                image: NetworkImage(imgPath),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          color: Colors.white,
                          child: ListTile(
                            trailing: Icon(
                              Icons.video_library,
                              color: Colors.red,
                              size: 25,
                            ),
                            title: Center(
                                child: Text(
                              namee,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
