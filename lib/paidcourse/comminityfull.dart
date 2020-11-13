import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customer extends StatefulWidget {
  String name;

  String email;
  String suggetiion;
  String experience;
  String docid;

  String plan;

  Customer(this.name, this.email, this.experience, this.suggetiion, this.docid,
      this.plan);
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          expandedHeight: 250,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              '',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            background: Image.asset(
              "assets/flu1.png",
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              InkWell(
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 70,
                  child: Card(
                      child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue[100], Colors.white])),
                    child: Center(
                      child: Text(
                        'Hello: ${widget.name}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 70,
                  child: Card(
                      child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue[100], Colors.white])),
                    child: Center(
                      child: Text(
                        '${widget.email}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Card(
                      child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue[100], Colors.white])),
                    child: Center(
                      child: Text(
                        'About Yourself: ${widget.suggetiion}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Card(
                      child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue[100], Colors.white])),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: Center(
                        child: Text(
                          'Suggetion to flutter developer : ${widget.experience}',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
