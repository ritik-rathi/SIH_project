import 'package:flutter/material.dart';

class Experts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration :BoxDecoration(
        gradient : new LinearGradient(
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 1.0),
          colors: [Colors.red[100] , Colors.green[100]]
        )
      )
    );
  }
}