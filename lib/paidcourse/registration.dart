import 'package:flutter/material.dart';
import 'package:flutterallwidgets/homepage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Regi extends StatefulWidget {
  @override
  _RegiState createState() => _RegiState();
}

class _RegiState extends State<Regi> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();

  TextEditingController _email = TextEditingController();
  TextEditingController _experience = TextEditingController();
  TextEditingController _suggetion = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Container(
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset("assets/flu1.png"),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextFormField(
                        controller: _name,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          icon: const Icon(
                            Icons.person,
                            color: Colors.blue,
                          ),
                          hintText: 'Enter your name',
                          labelText: 'Name',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextFormField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          icon: const Icon(
                            Icons.email,
                            color: Colors.blue,
                          ),
                          hintText: 'Enter your email id',
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
                      child: TextFormField(
                        controller: _experience,
                        maxLines: 2,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          icon: const Icon(
                            Icons.explore,
                            color: Colors.blue,
                          ),
                          hintText: 'About Yourself',
                          labelText: 'Yourself',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: TextFormField(
                        controller: _suggetion,
                        maxLines: 2,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          icon: const Icon(
                            Icons.perm_identity,
                            color: Colors.blue,
                          ),
                          hintText: 'Suggetion for Community',
                          labelText: 'Suggetions',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(child: Text("Select Your Favorate Part")),
                    Center(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 50,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>[
                          'Flutter + Android + IOS',
                          'Flutter + Firebase + Backend ',
                          'Flutter + ANimations + UI',
                          'FLutter + JSON + API ',
                          'Flutter + Google Map  ',
                          'Flutter + State Management ',
                          'Flutter + Web App  ',
                          'Flutter + Temsorflow',
                          'Flutter + Arcore + Dialogflow',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 16),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    new Container(
                        child: Center(
                      child: new RaisedButton(
                        color: Colors.green,
                        child: Container(
                            child: const Text(
                          'Register Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )),
                        onPressed: () async {
                          if (_name.text.isNotEmpty &&
                              _experience.text.isNotEmpty &&
                              _email.text.isNotEmpty &&
                              _suggetion.text.isNotEmpty) {
                            Firestore.instance
                                .collection('community')
                                .document('${_email.text}')
                                .setData({
                              "name": _name.text,
                              "email": _email.text,
                              "date": DateTime.now(),
                              "experience": _experience.text,
                              "suggetion": _suggetion.text,
                              "docid": '${DateTime.now()}',
                              "plan": dropdownValue
                            }).then((value) => () {
                                      _name.clear();

                                      _email.clear();
                                      _experience.clear();
                                      _suggetion.clear();
                                    });

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Matedesign()));
                            //Matedesign
                            //  Navigator.of(context).push( MaterialPageRoute(context)=> Matedesign());
                          }
                        },
                      ),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Center(
                        child: Text(
                          "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

register() async {
  const url = 'https://www.badabusiness.com/dd/BIYK005702/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// DropdownButton<String>(
//   value: dropdownValue,
//   icon: Icon(Icons.arrow_downward),
//   iconSize: 24,
//   elevation: 16,
//   style: TextStyle(color: Colors.deepPurple),
//   underline: Container(
//     height: 2,
//     color: Colors.deepPurpleAccent,
//   ),
//   onChanged: (String newValue) {
//     setState(() {
//       dropdownValue = newValue;
//     });
//   },
//   items: <String>['Android', 'iOS', 'Symbian', 'Windows','java','blackberry']
//       .map<DropdownMenuItem<String>>((String value) {
//     return DropdownMenuItem<String>(
//       value: value,
//       child: Text(value),
//     );
//   }).toList(),
// );
