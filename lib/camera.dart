import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:image_picker_saver/image_picker_saver.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

class Camera extends StatefulWidget {
  File fileData;
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;
  Future<Directory> getApplicationDocumentsDirectory() async {
    final Directory path = await getApplicationDocumentsDirectory();
    // TODO(amirh): remove this on when the invokeMethod update makes it to stable Flutter.
    // https://github.com/flutter/flutter/issues/26431
    // ignore: strong_mode_implicit_dynamic_method
    // await _channel.invokeMethod('getApplicationDocumentsDirectory');
    if (path == null) {
      return null;
    }
    return path;
  }

  Future getImage() async {
    var image = await ImagePickerSaver.pickImage(source: ImageSource.camera);
    final String path = (await getApplicationDocumentsDirectory()).path;
    // final String path = await getApplicationDocumentsDirectory().path;
    // List<int> imageBytes = await widget.fileData.readAsBytes();
    List<int> imageBytes = widget.fileData.readAsBytesSync();
    print(imageBytes);
    String base64Image = base64Encode(imageBytes);
// copy the file to a new path
    _image = await image.copy('$path/image1.png');
    //  _image.toString();
    ImagePickerSaver.saveFile();
    // setState(() {
    //  _image =image;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Container(
        child: _image == null
            ? new Text('No image selected')
            : new Image.file(_image),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: new Icon(Icons.camera),
      ),
    );
  }
}
