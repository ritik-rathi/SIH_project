import 'package:flutter/material.dart';
import 'package:sih_project/camera.dart';
import 'package:sih_project/feed.dart';
import 'package:sih_project/library.dart';

//TODO:  Add fonts
 int _currentIndex = 0;

class MainScreen extends StatefulWidget {
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> menuItems = [MainScreen() , Camera() , Feed() , Library()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Krishi Sahayak'),
      ),
      body: menuItems[_currentIndex],
      bottomNavigationBar:
          new BottomNavigationBar(currentIndex: _currentIndex, items: [
        new BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: new Text(
            'Home',
            style: new TextStyle(
                //  fontFamily: ,
                fontWeight: FontWeight.bold),
          ),
        ),
        new BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: new Text(
              'Camera',
                style: TextStyle(fontWeight: FontWeight.bold))),
        new BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            title: new Text(
              'Feed',
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
        new BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: new Text(
              'Database',
                style: new TextStyle(fontWeight: FontWeight.bold)))
      ],
      onTap: onTabTapped,
      ),
    );
  }
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;       
    });
  }
}


