import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, index){
            return new Card(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 16.0),
              child: RaisedButton(
                onPressed: (){},
                child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/farmer.jpg'),
                     //width: 80.0,
                     //height: 70.0,
                  ),
                  Text('Please solve my problem', style: TextStyle(fontSize: 20.0),)
                ],
              ),
              )
            );
          },
        ),
      ),

    );
  }
}