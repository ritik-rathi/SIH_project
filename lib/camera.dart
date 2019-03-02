import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker_saver/image_picker_saver.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

final FirebaseApp app = FirebaseApp(name: 'krishi');

final FirebaseOptions options = new FirebaseOptions(
    googleAppID: 'krishi-559bc',
    apiKey: 'AIzaSyBYN2OF5he5m_TysVHJA4hHvqrY9h29ov0',
    databaseURL: 'https://krishi-559bc.firebaseio.com');

class Item {
  String key;
  String photo;
  String cropName;

  Item({this.photo, this.cropName});

  Item.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        photo = snapshot.value['photo'],
        cropName = snapshot.value['cropName'];

  toJson() {
    return {'photo': photo, 'cropName': cropName};
  }
}

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;

  List<Item> items = List();
  Item item;
  DatabaseReference databaseRef;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void initState() {
    super.initState();
    item = Item(photo: "", cropName: "");

       _onEntryAdded(Event event) {
      setState(() {
        items.add(Item.fromSnapshot(event.snapshot));
      });
    }

    _onEntryChanged(Event event) {
      var old = items.singleWhere((entry) {
        return entry.key == event.snapshot.key;
      });
      setState(() {
        items[items.indexOf(old)] = Item.fromSnapshot(event.snapshot);
      });
    }

    final FirebaseDatabase database = FirebaseDatabase(app: app);
    databaseRef = database.reference().child('cropName');
    databaseRef.onChildAdded.listen(_onEntryAdded);
    databaseRef.onChildChanged.listen(_onEntryChanged);

 
  }

  void handleSubmit() {
    final FormState form = formKey.currentState;

    if (form.validate()) {
      form.save();
      form.reset();
      databaseRef.push().set(item.toJson());
    }
  }

  Future getImage() async {
    var tempImage = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = tempImage;
    });
  }
  var uuid = new Uuid();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
          child:
              _image == null ? new Text('Upload new Image') : enableUpload()),
      floatingActionButton: new FloatingActionButton(
        onPressed: getImage,
        // () {
        //   final StorageReference firebaseStorageRef =
        //       FirebaseStorage.instance.ref().child('myimage.jpg');
        //   final StorageUploadTask task = firebaseStorageRef.putFile(_image);
        // },
        tooltip: 'Pick Image',
        child: new Icon(Icons.camera),
      ),
    );
  }

  Widget enableUpload() {
    return Container(
      child: Column(
        children: <Widget>[
          Image.file(_image, height: 300.0, width: 300.0),
          // TextFormField(
          //   decoration: new InputDecoration(
          //     hintText: 'Crop Name'
          //   ),
          // ),
          RaisedButton(
            elevation: 7.0,
            child: Row(
              children: <Widget>[
                new Icon(Icons.keyboard_arrow_right),
                new Text(
                  'Upload',
                  style: new TextStyle(color: Colors.white),
                ),
              ],
            ),
            color: Colors.blue,
            onPressed: () {
              final StorageReference firebaseStorageRef =
                  FirebaseStorage.instance.ref().child('${uuid.v1()}.jpg');
              final StorageUploadTask task = firebaseStorageRef.putFile(_image);
            },
          )
        ],
      ),
    );
  }
}

  // Future<Directory> getApplicationDocumentsDirectory() async {
  //   final Directory path = await getApplicationDocumentsDirectory();
  //   // remove this on when the invokeMethod update makes it to stable Flutter.
  //   // https://github.com/flutter/flutter/issues/26431
  //   // ignore: strong_mode_implicit_dynamic_method
  //   // await _channel.invokeMethod('getApplicationDocumentsDirectory');
  //   if (path == null) {
  //     return null;
  //   }
  //   return path;
  // }

//   Future getImage() async {
//     var image = await ImagePickerSaver.pickImage(source: ImageSource.camera);
//     final String path = (await getApplicationDocumentsDirectory()).path;
//     // final String path = await getApplicationDocumentsDirectory().path;
//     // List<int> imageBytes = await widget.fileData.readAsBytes();
//     List<int> imageBytes = widget.fileData.readAsBytesSync();
//     print(imageBytes);
//     String base64Image = base64Encode(imageBytes);

//     var message = base64Image;
//     Firestore store = Firestore();
//     CollectionReference ref = store.collection("messages");
//     ref.putString(message, 'base64').then(function((snapshot) {
//     print('Uploaded a base64 string!');
// });
// // copy the file to a new path
//     _image = await image.copy('$path/image1.png');
//     //  _image.toString();
//     ImagePickerSaver.saveFile(fileData: imageBytes);
//     // setState(() {
//     //  _image =image;
//     // });
//   }