import 'package:flutter/material.dart';
import 'package:sih_project/LoginPage/login.dart';
import 'package:sih_project/home_screen.dart';
import 'package:sih_project/library.dart';
import 'package:sih_project/option_select.dart';
import 'main_screen.dart';
import 'LoginPage/login.dart';
import 'camera.dart';
import 'feed.dart';
import 'package:connectivity/connectivity.dart';
import 'dart:async';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  
// var connectivityResult = await (Connectivity().checkConnectivity());
// if (connectivityResult == ConnectivityResult.mobile) {
//   // I am connected to a mobile network.
// } else if (connectivityResult == ConnectivityResult.wifi) {
//   // I am connected to a wifi network.
// }
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

