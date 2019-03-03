import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:json_annotation/json_annotation.dart';
//import 'package:json_serializable/json_serializable.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'dart:async';
//import 'package:fluttertoast/fluttertoast.dart';

// class Photo {
//   final int upvote;
//   final String disease;
//   final String url;

//   Photo({this.upvote, this.url, this.disease});

//   factory Photo.fromJson(Map<String, dynamic> json) {
//     return Photo(
//       upvote: json['upvote'] as int,
//       disease: json['disease'] as String,
//       url: json['url'] as String,
//     );
//   }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         child: FutureBuilder<List<Photo>>(
//           future: fetchPhotos(http.Client()),
//           builder: (context, snapshot) {
//             if (snapshot.hasError) print(snapshot.error);

//             return snapshot.hasData
//                 ? FeedState(pic: snapshot.data)
//                 : Center(child: CircularProgressIndicator());
//           },
//         ),
//         padding: EdgeInsets.fromLTRB(1.0, 10.0, 1.0, 10.0),
//       ),
//     );
//   }
// }

class Feed extends StatefulWidget {
  FeedState createState() => FeedState();
}

class FeedState extends State<Feed> {
  Map data;
  List userData;

  final String url = 'https://floating-oasis-94041.herokuapp.com/feed';

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

  Widget build(BuildContext context) {
    //int _index=0;
    return Scaffold(
      body: Container(
        color: Colors.white,
      
        child: ListView.builder(
          itemCount: userData == null ? 0 : userData.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              margin: EdgeInsets.only(left: 80, right: 80, bottom: 16),
              child:DecoratedBox(
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.green[200], Colors.green[400]]
                  )
                ),
              
              
              child: Column(
                children: <Widget>[
                  Container(margin:EdgeInsets.only(bottom: 10.0)),
                  Image.network(userData[index]["photoUrl"],
                      width: 100, height: 100.0),
                  Text(
                    '${userData[index]["disease"]}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Text(
                    'Upvotes: ${userData[index]["upvote"]}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  )
                ],
              ),
            ));
          },
        ),
      ),
    );
  }
}
