import 'package:flutter/material.dart';
import 'package:sih_project/camera.dart';
import 'package:sih_project/feed.dart';
import 'package:sih_project/home_screen.dart';
import 'package:sih_project/library.dart';
import 'package:http/http.dart' as http;
import 'LoginPage/login.dart';
import 'dart:convert';

//TODO:  Add fonts
// class Post {
//   final String userId;
//   final bool isReviewed;
//   final String title;
//   final String body;

//   Post({this.userId, this.isReviewed, this.title, this.body});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       userId: json['userId'],
//       isReviewed: json['isReviewed'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }
// }

class MainScreen extends StatefulWidget {
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static String user = 'hahah';
  // static LoginData loginData = new LoginData(name: user);
  int _currentIndex = 0;
  final List<Widget> menuItems = [HomeScreen(), Camera(), Feed(), Library()];
  final String url =
      'https://floating-oasis-94041.herokuapp.com/reinforcement/$user';

// Future<Post> fetchPost() async {
//   final response =
//       await http.get('https://jsonplaceholder.typicode.com/posts/1');

//   if (response.statusCode == 200) {
//     // If server returns an OK response, parse the JSON
//     return Post.fromJson(json.decode(response.body));
//   } else {
//     // If that response was not OK, throw an error.
//     throw Exception('Failed to load post');
//   }
// }
  Map data;
  List userData;

  Future getData() async {
    http.Response res = await http.get(Uri.encodeFull(url));
    data = json.decode(res.body);
    setState(() {
      userData = data['data'];
      print(userData.toString());
    });
  }
  void initState() { 
    getData().then((onValue) => {super.initState():url});
    // getData().then((onValue))=>
  }

  // Widget build(BuildContext context){
  //   return Scaffold(
  //     body: Container(
  //       child: ListView.builder(
  //         itemCount: userData == null ? 0 :userData.length,
  //         itemBuilder: (BuildContext context , index){
  //           return Card(child: Column(
  //             children: <Widget>[
  //               Image.network(userData[index]["photoUrl"]),
  //               Text('${userData[index]["disease"]}')
  //             ],
  //           ),);
  //         }
  //       ),
  //     ),
  //   );
  // }

  // Widget itemCard(String name, String imgPath, bool isFavourite) {
  //   int index = 0;
  //   return Padding(
  //     padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
  //     child: Container(
  //       height: 150.0,
  //       width: double.infinity,
  //       color: Colors.white,
  //       child: Row(
  //         children: <Widget>[
  //           Container(
  //             width: 140.0,
  //             height: 150.0,
  //             decoration: BoxDecoration(
  //                 image: DecorationImage(
  //                     image: NetworkImage(userData[index]["photoUrl"]),
  //                     fit: BoxFit.cover)),
  //           ),
  //           SizedBox(
  //             width: 4.0,
  //           ),
  //           Column(
  //             children: <Widget>[
  //               Row(
  //                 children: <Widget>[
  //                   Text(name,
  //                       style: TextStyle(
  //                           fontFamily: 'Quicksand',
  //                           fontSize: 17.0,
  //                           fontWeight: FontWeight.bold)),
  //                   SizedBox(
  //                     width: 45.0,
  //                   ),
  //                   Material(
  //                     elevation: isFavourite ? 0.0 : 2.0,
  //                     borderRadius: BorderRadius.circular(20.0),
  //                     child: Container(
  //                       height: 40.0,
  //                       width: 40.0,
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(20.0),
  //                           color: isFavourite
  //                               ? Colors.grey.withOpacity(0.2)
  //                               : Colors.white),
  //                       child: Center(
  //                           child: isFavourite
  //                               ? Icon(
  //                                   Icons.favorite,
  //                                   color: Colors.red,
  //                                 )
  //                               : Icon(Icons.favorite_border)),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               SizedBox(
  //                 height: 5.0,
  //               ),
  //               Container(
  //                 width: 175.0,
  //                 child: Text(
  //                   '',
  //                   textAlign: TextAlign.left,
  //                   style: TextStyle(
  //                       fontFamily: 'Quicksand',
  //                       color: Colors.grey,
  //                       fontSize: 12.0),
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 10.0,
  //               ),
  //               Row(
  //                 children: <Widget>[
  //                   SizedBox(
  //                     width: 35.0,
  //                   ),
  //                   Container(
  //                     height: 30.0,
  //                     width: 50.0,
  //                     color: Colors.red,
  //                     child: Center(
  //                         child: Text(
  //                       '',
  //                       style: TextStyle(
  //                           fontFamily: 'Quicksand',
  //                           color: Colors.white,
  //                           fontWeight: FontWeight.bold),
  //                     )),
  //                   ),
  //                   Container(
  //                     height: 30.0,
  //                     width: 100.0,
  //                     color: Colors.red,
  //                     child: Center(
  //                       child: Text('',
  //                           style: TextStyle(
  //                               fontFamily: 'Quicksand',
  //                               fontWeight: FontWeight.bold,
  //                               color: Colors.white)),
  //                     ),
  //                   )
  //                 ],
  //               )
  //             ],
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Krishi Sahayak'),
      ),
      body: menuItems[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
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
              title: new Text('Camera',
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
              title: new Text('Database',
                  style: new TextStyle(fontWeight: FontWeight.bold)))
        ],
        onTap: onTabTapped,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
