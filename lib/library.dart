import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(child: Container(color: Colors.white))
        ],
      ),
    );
  }
}
