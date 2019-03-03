import 'package:flutter/material.dart';
import 'package:sih_project/LoginPage/login.dart';
import 'package:sih_project/home_screen.dart';
import 'package:sih_project/library.dart';
import 'package:sih_project/option_select.dart';
import 'main_screen.dart';
import 'LoginPage/login.dart';
import 'camera.dart';
import 'feed.dart';
import 'dart:io';
import 'dart:core';
import 'package:connectivity/connectivity.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

Color color;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Login(),
      routes: {
        '.':(context) => Login(),
        '/mainscreen':(context) => MainScreen(),   
        '/feed': (context) => Feed()     
      },      
    );
  }
}

