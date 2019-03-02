import 'package:flutter/material.dart';
import 'package:sih_project/option_select.dart';
import 'main_screen.dart';
import 'LoginPage/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Login(),
      initialRoute: '.',
      routes: {
        '.':(context) => Login(),
        'mainscreen': (context) => MainScreen()
      },
    );
  }
}

