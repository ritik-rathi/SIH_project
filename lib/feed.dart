import 'package:flutter/material.dart';


class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('news feed'),
        backgroundColor: Colors.green[400],
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, index){
            return Card(
              color: Colors.green[100],
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/farmer.jpg'),
                    width: double.infinity,
                  ),
                  Text('Farmer is facing this problem')
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}