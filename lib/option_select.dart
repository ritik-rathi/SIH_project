import 'package:flutter/material.dart';

class SelectIcon {
  final String iconPath;
  final String name;
  final bool isSelected;

  SelectIcon({this.iconPath, this.name, this.isSelected});
}
//TODO: Implement this


class OptionSelect extends StatelessWidget {
  final List<SelectIcon> list = [];
  final List<String> finalList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Stack(children: <Widget>[
          Column(children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(4.0, 2.0),
                      colors: [
                    Colors.blueAccent,
                    Colors.cyan,
                    Colors.green[200],
                    Colors.deepPurple
                  ])),
            ),
            new Container(
              width: double.infinity,
              height: 120.0,
              child: Center(
                child: new Text(
                  'Please the crops you grow',
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28.0),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white30,
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 10.0,
              child: new Container(
                width: 150.0,
                height: 50.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.red),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.arrow_forward),
                    Text(
                      'Next',
                      style: new TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            new Padding(
              padding: EdgeInsets.only(top: 100.0),
            ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.yellow[200]),
                  ),
                  new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.yellow[200]),
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.yellow[200]),
                  ),
                  new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.yellow[200]),
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.yellow[200]),
                  ),
                  new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.yellow[200]),
                  )]
              )
            ])
          ])
        ])
    );
  }
}
