import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map data;
  List userData;
static String user = 'hahah';
  // static LoginData loginData = new LoginData(name: user);
  int _currentIndex = 0;
  // final List<Widget> menuItems = [HomeScreen(), Camera(), Feed(), Library()];
  final String url =
      'https://floating-oasis-94041.herokuapp.com/reinforcement/$user';

    Future getData() async {
    http.Response res = await http.get(Uri.encodeFull(url));
    data = json.decode(res.body);
    setState(() {
      userData = data['data'];
      print(userData.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildHome(),
    );
  }
}

Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: ListView.builder(
          itemCount: userData == null ? 0 : userData.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: Column(
                children: <Widget>[
                  _buildHome(),
                  Image.network(userData[index]["photoUrl"]),
                  Text('${userData[index]["disease"]}')
                ],
              ),
            );
          }),
    ),
  );
}

//main display
Widget _buildHome() {
  return Scaffold(
    body: ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Positioned(
                  bottom: 50.0,
                  right: 100.0,
                  child: Container(
                    height: 400.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200.0),
                      color: Colors.red.withOpacity(0.4),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 150.0,
                  left: 100.0,
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200.0),
                      color: Colors.red.withOpacity(0.5),
                    ),
                  ),
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
                                      image: AssetImage('assets/farmer.jpg'),
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
                                    image: AssetImage('assets/farmer.jpg'))),
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
                                    image: AssetImage('assets/farmer.jpg'))),
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
                                    image: AssetImage('assets/farmer.jpg'))),
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
                      SizedBox(height: 10.0)
                    ])
              ],
            ),
            SizedBox(height: 100.0),
            new Row(
              children: <Widget>[
                new Container(
                  width: 90.0,
                  height: 100.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      new Stack(
                        children: <Widget>[
                          new Text(
                            '23°C',
                            style: new TextStyle(),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
