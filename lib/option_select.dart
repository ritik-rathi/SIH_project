import 'package:flutter/material.dart';

class SelectIcon {
  final String iconPath;
  final String name;
  final bool isSelected;

  SelectIcon({this.iconPath, this.name, this.isSelected});
}

class OptionSelect extends StatelessWidget {
  final List<SelectIcon> list = [];
  final List<String> finalList = [];

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
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
        child: new Text(
          'Please the crops you grow',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16.0
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white54,
        ),
      )
    ]);
  }
}
