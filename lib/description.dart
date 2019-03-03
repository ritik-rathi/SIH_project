import 'package:flutter/material.dart';
import 'library.dart';

class TextData{
  final Text text;
  TextData({this.text});
}

final List<TextData> data = [
  new TextData(text: Text('Bacterial spot is one of the most devastating diseases of pepper and tomato grown in warm, moist environments. Once present in the crop, it is almost impossible to control the disease and prevent major fruit loss when environmental conditions remain favorable.')),
  new TextData(text: Text('Potato early blight is caused by the fungus Alternaria solani and occurs wherever potatoes are grown, and is the disease most targeted by potato growers with fungicides in the U.S. ')),
  new TextData(text: Text('Late blight (Phytophthora infestans) fungus is in the same genus as the fungus causing pink rot (P. erythroseptica)')),
  new TextData(text: Text('The disease starts on the older leaves and spreads upwards. The first signs are irregular-shaped spots (less than 1 mm) with a yellow margin')),
  new TextData(text: Text('There is no cure for tomato mosaic virus. Once a plant is infected, it stays that way, and the virus can easily be transmitted to other plants.')),
  new TextData(text: Text('Tomato yellow leaf curl virus (TYLCV) is the name given to a complex of geminiviruses infecting tomato cultures worldwide. TYLCV is transmitted by a single insect species, the whitefly Bemisia tabaci.')),
  new TextData(text: Text('Bacterial spot is one of the most dangerous tomato diseases in existence, since it spreads rapidly and is very difficult to control. In most cases, tomato plant become so distorted by bacterial spot that their marketability severely decreases.'))
];

class Data extends StatelessWidget{
  final TextData td;
  Data({this.td});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: td.text,
    );
  }
}

class Description extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container( 
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
        new Data(
          td: data[0],
        )

      ])
    ])));
  }
}
