import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// ignore: must_be_immutable
class FullScreenImagePage extends StatefulWidget {
  String imgPath;
  String name;
  String tagg;
  String link;
  String title;

  FullScreenImagePage(
      this.imgPath, this.link, this.name, this.tagg, this.title);

  @override
  _FullScreenImagePageState createState() => _FullScreenImagePageState();
}

class _FullScreenImagePageState extends State<FullScreenImagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: 180,
                  child: Image.network(
                    widget.imgPath,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(widget.tagg),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue[50], Colors.white])),
                  child: Center(
                      child: Text(
                    ' Description',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ))),
            ),
            Image.asset("assets/flu4.png"),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Center(
                  child: Text(
                widget.name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 80,
              child: FlatButton(
                  color: Colors.blue[100],
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => MyWebView(
                          title: " flutter package ",
                          //selectedUrl: "https://pub.dev/packages/firebase_storage",

                          selectedUrl: widget.link,
                        ),
                      ),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blue[50], Colors.white])),
                      child: Center(
                          child: Text(
                        ' click here to read Post...',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )))),
            ),
            Image.asset("assets/flu3.png"),
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}

class MyWebView extends StatelessWidget {
  final String title;
  final String selectedUrl;
  MyWebView({
    @required this.title,
    @required this.selectedUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebviewScaffold(
            url: selectedUrl,
            withJavascript: true,
            withZoom: true,
            hidden: true,
            initialChild: Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 350,
                    ),
                    Image.asset(" assets/load.gif"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      " waiting.....",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
