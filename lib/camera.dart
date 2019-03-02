import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;

  Future getImage(ImageSource imagesource) async{
    var image =await ImagePicker.pickImage(source: ImageSource.camera);
    final String path = (await getApplicationDocumentsDirectory()).path;

// copy the file to a new path
   final File newImage = await image.copy('$path/image1.png');
    setState(() {
     _image =image; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Container(
        child: _image == null ? new Text('No image selected') :new Image.file(_image),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: getImage, tooltip: 'Pick Image', child: new Icon(Icons.camera),),
    );
  }
}