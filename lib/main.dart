import 'package:flutter/material.dart';
import 'news.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Feed(),
    );
  }
}

