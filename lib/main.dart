import 'package:flutter/material.dart';
import 'package:sih_project/library.dart';
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
<<<<<<< HEAD
      home: Login(),
      initialRoute: '.',
      routes: {
        '.':(context) => Login(),
        'mainscreen': (context) => MainScreen()
=======
      initialRoute: 'mainscreen',
      home: MainScreen(),
      routes: {
        '.':(context) => OptionSelect(),
        'mainscreen': (context) => MainScreen(),
        'library':(context) => Library()
>>>>>>> 5f3f92351c5627bbe2e3afba29e03f03b27d495f
      },
    );
  }
}

