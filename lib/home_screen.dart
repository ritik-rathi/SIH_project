import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:core';


class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map data;
  List userData;

  final String url =
      'https://floating-oasis-94041.herokuapp.com/reinforcement/hahah';

  Future getData() async {
    http.Response res = await http.get(Uri.encodeFull(url));
    data = json.decode(res.body);
    setState(() {
      userData = data['data'];
      print(userData.toString());
    });
  }

  void initState() {
    getData().then((onValue) => {super.initState(): url});

    
    //super.initState();
    /*then((onValue) => {Toast.makeText(userData).show();});*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/experts');
          },
          child: new Icon(Icons.mobile_screen_share),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Container(
          child: ListView(children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 250.0,
                      width: double.infinity,
                      color: Colors.red,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 50.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Hello , Farmer',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              'You Grow :',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              // SizedBox(
                              //   width: 15.0,
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2.0),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/images/tomato.png'),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              // SizedBox(
                              //   width: MediaQuery.of(context).size.width - 120,
                              // ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2.0),
                                    image: DecorationImage(
                                        image: AssetImage('assets/potato.png'),
                                        fit: BoxFit.contain)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2.0),
                                    image: DecorationImage(
                                        image: AssetImage('assets/wheat.jpg'),
                                        fit: BoxFit.contain)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2.0),
                                    image: DecorationImage(
                                        image: AssetImage('assets/Onion.png'),
                                        fit: BoxFit.contain)),
                              ),
                            ],
                          ),
                          SizedBox(height: 25.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(5.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.deepOrange,
                                      size: 30.0,
                                    ),
                                    contentPadding:
                                        EdgeInsets.only(left: 15.0, top: 15.0),
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                        fontFamily: 'Quicksand',
                                        color: Colors.grey)),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 400.0,
                            width: double.infinity,
                            child: Row(
                              children: <Widget>[
                                Image.network(
                                  userData[0]["photoUrl"],
                                  height: 380.0,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Column(
                                  children: <Widget>[
                                    Center(
                                        child: Text(
                                      userData[0]["name"],
                                      style: new TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0),
                                    )),
                                    SizedBox(
                                      height: 50.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        IconButton(
                                          onPressed: () {
                                            print("rathi");
                                            var photoUrl = userData[0]
                                                    ["photoUrl"]
                                                .toString()
                                                .substring(71, 104);
                                            var url =
                                                "https://floating-oasis-94041.herokuapp.com/reinforcement/${photoUrl}";

                                            var client = http.Client();
                                            print("tripathi");
                                            client.post(url, body: {
                                              "justified": "true"
                                            }).then((response) {
                                              print(
                                                  "Response status: ${response.statusCode}");
                                              print(
                                                  "Response body: ${response.body}");
                                            });
                                          },
                                          icon: Icon(Icons.check),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            var photoUrl = userData[0]
                                                    ["photoUrl"]
                                                .toString()
                                                .substring(71, 104);
                                            var url =
                                                "https://floating-oasis-94041.herokuapp.com/reinforcement/${photoUrl}";

                                            var client = http.Client();
                                            client.post(url, body: {
                                              "justified": "false"
                                            }).then((response) {
                                              print(
                                                  "Response status: ${response.statusCode}");
                                              print(
                                                  "Response body: ${response.body}");
                                            });
                                          },
                                          icon: Icon(Icons.redo),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ])
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ),
            Container(
              height: 400.0,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Image.network(
                    userData[0]["photoUrl"],
                    height: 380.0,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: <Widget>[
                      Center(
                          child: Text(
                        userData[0]["name"].toString().toUpperCase(),
                        style: new TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                      )),
                      SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              print("rathi");
                              var photoUrl = userData[0]["photoUrl"]
                                  .toString()
                                  .substring(71, 104);
                              var url =
                                  "https://floating-oasis-94041.herokuapp.com/reinforcement/${photoUrl}";

                              var client = http.Client();
                              print("tripathi");
                              client.post(url,
                                  body: {"justified": "true"}).then((response) {
                                print(
                                    "Response status: ${response.statusCode}");
                                print("Response body: ${response.body}");
                              });
                            },
                            icon: Icon(Icons.check),
                          ),
                          IconButton(
                            onPressed: () {
                              var photoUrl = userData[0]["photoUrl"]
                                  .toString()
                                  .substring(71, 104);
                              var url =
                                  "https://floating-oasis-94041.herokuapp.com/reinforcement/${photoUrl}";

                              var client = http.Client();
                              client
                                  .post(url, body: {"justified": "false"}).then(
                                      (response) {
                                print(
                                    "Response status: ${response.statusCode}");
                                print("Response body: ${response.body}");
                              });
                            },
                            icon: Icon(Icons.redo),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ]),
        ));
  }

  Widget itemCard() {
    return Container(
      height: 150.0,
      width: double.infinity,
      color: Colors.white,
    );
  }
}
