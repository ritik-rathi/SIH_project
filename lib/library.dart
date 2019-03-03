import 'package:flutter/material.dart';

class LibraryViewModel {
  final String name;
  final String icon;
  final String description;

  LibraryViewModel({this.icon, this.name , this.description});
}

class Lib extends StatelessWidget {
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
          Container(
            margin: EdgeInsets.only(right: 16.0),
          ),
          new Container(
            width: 100.0,
            height: 100.0,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/description');
              },
              child: new Image(
                image: AssetImage(lib.icon),
                height: 50,
                width: 50,
              ),
            ),
            decoration:
                new BoxDecoration(borderRadius: BorderRadius.circular(25.0)),
          ),
          Container(
            margin: EdgeInsets.only(right: 30.0),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/description');
            },
            child: new Text(
              lib.name,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

final List<LibraryViewModel> list = [
  new LibraryViewModel(
      icon: 'assets/images/BS.jpg', name: 'Pepper bell bacterial spot',description: 'Bacterial spot is one of the most devastating diseases of pepper and tomato grown in warm, moist environments. Once present in the crop, it is almost impossible to control the disease and prevent major fruit loss when environmental conditions remain favorable.'),
  new LibraryViewModel(
    icon: 'assets/images/potatoEB.jpg',
     name: 'Potato early blight',
     description: 'Bacterial spot is one of the most devastating diseases of pepper and tomato grown in warm, moist environments. Once present in the crop, it is almost impossible to control the disease and prevent major fruit loss when environmental conditions remain favorable.'),
  new LibraryViewModel(icon: 'assets/images/potatoLB.jpg', name: 'Potato late blight'),
  new LibraryViewModel(icon: 'assets/images/tomatoTS.jpg', name: 'Tomato target spot' , description: 'Potato early blight is caused by the fungus Alternaria solani and occurs wherever potatoes are grown, and is the disease most targeted by potato growers with fungicides in the U.S. '),

  new LibraryViewModel(icon: 'assets/images/TMV.jpg', name: 'Tomato Mosaic Virus' ,description: 'Late blight (Phytophthora infestans) fungus is in the same genus as the fungus causing pink rot (P. erythroseptica)'),

  new LibraryViewModel(
      icon: 'assets/tylcv.jpg', name: 'Tomato yellow leaf curl virus', description: 'The disease starts on the older leaves and spreads upwards. The first signs are irregular-shaped spots (less than 1 mm) with a yellow margin'),

  new LibraryViewModel(
      icon: 'assets/tomatoBS.jpg', name: 'Tomato Bacterial Spot',description: 'There is no cure for tomato mosaic virus. Once a plant is infected, it stays that way, and the virus can easily be transmitted to other plants.'),

  new LibraryViewModel(icon: 'assets/farmer.jpg', name: 'Tomato early blight'),
  new LibraryViewModel(icon: 'assets/farmer.jpg', name: 'Tomato spider mites'),
  new LibraryViewModel(
      icon: 'assets/farmer.jpg', name: 'Tomato Septoria Spot ',description: 'Tomato yellow leaf curl virus (TYLCV) is the name given to a complex of geminiviruses infecting tomato cultures worldwide. TYLCV is transmitted by a single insect species, the whitefly Bemisia tabaci.'),

  new LibraryViewModel(icon: 'assets/farmer.jpg', name: 'Tomato Late Blight',description: 'Bacterial spot is one of the most dangerous tomato diseases in existence, since it spreads rapidly and is very difficult to control. In most cases, tomato plant become so distorted by bacterial spot that their marketability severely decreases.'),

  new LibraryViewModel(icon: 'assets/farmer.jpg', name: 'Tomato leaf mold')
];

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Lib(
            lib: list[0],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[1],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[2],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[3],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[4],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[5],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[6],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[7],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[8],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[9],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[10],
          ),
          SizedBox(
            height: 5.0,
          ),
          Lib(
            lib: list[11],
          ),
          SizedBox(
            height: 5.0,
          ),
          //    Lib(
          //    lib: list[12],
          //  ),
          SizedBox(
            height: 5.0,
          )
        ],
      ),
    );
  }
}
