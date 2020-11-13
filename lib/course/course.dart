import 'package:flutter/material.dart';
import 'package:flutterallwidgets/course/googlemap/googlemap.dart';

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GoogleMap()));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 200,
              color: Colors.blue[200],
              child: Center(child: Center(child: Text("Gooogle map APi"))),
            ),
          )
        ],
      ),
    );
  }
}
