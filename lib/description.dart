import 'package:flutter/material.dart';
import 'library.dart';

class Description extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(children: <Widget>[
      Column(children: <Widget>[
        new Container(
          width: double.infinity,
          height: 300.0,
          decoration: new BoxDecoration(
              image: new DecorationImage(
            image: new AssetImage(list[0].icon),
            fit: BoxFit.contain,
          )),
        ), 
        Center(child: Text(list[0].name , style: TextStyle(color: Colors.white),)) , 
        SizedBox(height: 15.0,),
        new Text('Points ')

      ])
    ]));
  }
}
