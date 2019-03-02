import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:json_annotation/json_annotation.dart';
//import 'package:json_serializable/json_serializable.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'dart:async';

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response =
      await client.get('https://floating-oasis-94041.herokuapp.com/feed');

  // Use the compute function to run parsePhotos in a separate isolate
  return compute(parsePhotos, response.body);
}

// A function that will convert a response body into a List<Photo>
List<Photo> parsePhotos(String responseBody){
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}


class Photo {
  final int upvote;
  final String disease;
  final String url;

  Photo({this.upvote, this.url, this.disease});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      upvote: json['upvote'] as int,
      disease: json['disease'] as String,
      url: json['url'] as String,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        child: FutureBuilder<List<Photo>>(
          future: fetchPhotos(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? FeedState(pic: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        ),
        padding: EdgeInsets.fromLTRB(1.0, 10.0, 1.0, 10.0),
      ),
    );
  }
}


class Feed extends StatefulWidget {
  FeedState createState() => FeedState();
}

class FeedState extends State<Feed> {
  final List<Photo> pic;
  FeedState({this.pic});

  Widget build(BuildContext context) {
    //int _index=0;
    return Scaffold(
      body: Container(
        color: Colors.green[300],
        child: ListView.builder(
          //itemCount: list.length,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
                onTap: () {},
                child: Card(
                  margin: EdgeInsets.only(bottom: 20.0, right: 10, left: 10),
                  color: Colors.green[100],
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                      ),
                      Image(
                        image: NetworkImage(pic[index].url),
                        width: double.infinity,
                        height: 100,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10.0),
                      ),
                      Text(pic[index].disease,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left),
                      Text('Upvotes: ${pic[index].upvote}',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ));
          },
        ),
      ),
    );
  }
}
