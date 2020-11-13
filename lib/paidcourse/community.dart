import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';

import 'comminityfull.dart';

class Crm extends StatefulWidget {
  @override
  _CrmState createState() => _CrmState();
}

class _CrmState extends State<Crm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
            stream: Firestore.instance
                .collection('community')
                .orderBy("date", descending: true)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              }
              return Container(
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: snapshot.data.documents
                      .map<Widget>((DocumentSnapshot document) {
                    String name = document['name'];

                    String email = document['email'];

                    String experience = document['experience'];
                    String suggetion = document['suggetion'];

                    String docid = document['docid'];

                    String plan = document['plan'];

                    return SingleChildScrollView(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Customer(name, email,
                                  suggetion, experience, docid, plan)));
                        },
                        child: Card(
                          color: Colors.blue[100],
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.blue[100], Colors.white])),
                            child: Column(
                              children: [
                                Text(
                                  "$name",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "$email",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text("Interest: $plan")),
                                // Divider(
                                //   height: 1,
                                //   color: Colors.blue,
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            }),
      ),
    );
  }
}
