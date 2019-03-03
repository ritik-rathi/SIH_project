import 'package:flutter/material.dart';

class LibraryViewModel{
  final String name;
  final String icon;

  LibraryViewModel({
    this.icon,
    this.name
  });
}

class Lib extends StatelessWidget{
  
  final LibraryViewModel lib;
  Lib({this.lib});
   @override
  Widget build(BuildContext context) {
     return Container(
       width: double.infinity,
            height: 100.0,
            color: Colors.green[200],
            child: new Row(
              children: <Widget>[
                Container(margin: EdgeInsets.only(right: 16.0),),
                new Container(
                  width: 100.0,
                  height: 100.0,
                  child: new Image(
                    image: AssetImage(lib.icon),
                    height: 50,
                    width: 50,
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                ),
                Container(margin: EdgeInsets.only(right: 30.0),),
                new Text(
                  lib.name,
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
     );
  } 
}

final List<LibraryViewModel> list = [
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Pepper bell bacterial spot'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Potato early blight'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Potato late blight'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Tomato target spot'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Tomato Mosaic Virus'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Tomato yellow leaf curl virus'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Tomato Bacterial Spot'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Tomato early blight'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Tomato spider mites'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Tomato Septoria Spot '),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Tomato Late Blight'),
    new LibraryViewModel(icon: 'assets/farmer.jpg',name: 'Tomato leaf mold')
  ];

class Library extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(        
        children: <Widget>[          
         Lib(
           lib: list[0],
         ),
          SizedBox(height: 5.0,),
           Lib(
           lib: list[1],
         ),
          SizedBox(height: 5.0,),
           Lib(
           lib: list[2],
         ),
          SizedBox(height: 5.0,),
           Lib(
           lib: list[3],
         ),
          SizedBox(height: 5.0,),
          Lib(
           lib: list[4],
         ),
          SizedBox(height: 5.0,),
          Lib(
           lib: list[5],
         ),
          SizedBox(height: 5.0,),
          Lib(
           lib: list[6],
         ),
          SizedBox(height: 5.0,),
          Lib(
           lib: list[7],
         ),
          SizedBox(height: 5.0,),
          Lib(
           lib: list[8],
         ),
          SizedBox(height: 5.0,),
          Lib(
           lib: list[9],
         ),
          SizedBox(height: 5.0,),
           Lib(
           lib: list[10],
         ),
          SizedBox(height: 5.0,),
           Lib(
           lib: list[11],
         ),
          SizedBox(height: 5.0,),
        //    Lib(
        //    lib: list[12],
        //  ),
          SizedBox(height: 5.0,)
           
        ],
      ),
    );
  }
}
