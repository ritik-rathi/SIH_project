import 'package:flutter/material.dart';
import 'package:sih_project/library.dart';
import 'package:sih_project/option_select.dart';
import 'main_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: 'mainscreen',
      home: MainScreen(),
      routes: {
        '.':(context) => OptionSelect(),
        'mainscreen': (context) => MainScreen(),
        'library':(context) => Library()
      },
    );
  }
}

