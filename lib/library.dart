import 'package:flutter/material.dart';

class LibraryViewModel{
  final String name;
  final String icon;

  LibraryViewModel({
    this.icon,
    this.name
  });
}

class Library extends StatelessWidget {

  final List<LibraryViewModel> list = [
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Text'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Text'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Text')

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(        
        children: <Widget>[          
          Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.red,
            child: new Row(
              children: <Widget>[
                new Container(
                  width: 50.0,
                  height: 50.0,
                  child: new Image(
                    image: AssetImage(list[0].icon),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                ),
                new Text(
                  list[0].name,
                )
              ],
            ),
          ),
          SizedBox(height: 5.0,),
           Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.red,
          ),
          SizedBox(height: 5.0,),
           Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.red,
          ),
          SizedBox(height: 5.0,),
           Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.red,
          ),
          SizedBox(height: 5.0,),
        ],
      ),
    );
  }
}
