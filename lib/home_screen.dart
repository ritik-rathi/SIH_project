import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
      Widget build(BuildContext context){
      return Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 250.0,
                      width: double.infinity,
                      color: Colors.yellow,
                    ),
                    Positioned(
                      bottom: 50.0,
                      right: 100.0,
                      child: Container(
                        height: 400.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.white.withOpacity(0.4),
                          
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 150.0,
                      left: 100.0,
                      child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.white.withOpacity(0.5),

                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                        SizedBox(height: 15.0),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage('assets/chris.jpg')
                                  )
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width - 120,),
                            Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                  icon: Icon(Icons.menu),
                                  onPressed: (){

                                  },
                                  color:Colors.white,
                                iconSize: 30.0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 50.0),
                        //Welcome text
                        Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Hello , Farmer',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                        ),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'How may we help you?',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 25.0),
                        //search bar
                        Padding(
                          padding: EdgeInsets.only(left: 15.0 , right: 15.0),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                  color: Colors.yellow,
                                  size: 30.0,
                                ),
                                contentPadding: EdgeInsets.only(left: 15.0 , top: 15.0),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  fontFamily: 'Quicksand',
                                  color: Colors.grey
                                )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0)
                      ]
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                //the crops whichh are to be shown
                Stack(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Material(
                      elevation: 1.0,
                    child:Container(
                      height: 75.0,
                      color: Colors.white,
                    )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/4,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:AssetImage('assets/sofa.png')
                                  )
                                ),
                              ),
                              Text(
                                'Crop1',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 15.0,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/4,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:AssetImage('assets/wardrobe.png')
                                    )
                                ),
                              ),
                              Text(
                                'Crop2',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 15.0,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/4,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:AssetImage('assets/dresser.png')
                                    )
                                ),
                              ),
                              Text(
                                'Crop3',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 15.0,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          width: MediaQuery.of(context).size.width/4,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:AssetImage('assets/desks.png')
                                    )
                                ),
                              ),
                              Text(
                                'Crop4',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 15.0,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                itemCard('Tomato Target Spots', "assets/ottoman.jpg", false),
                itemCard('Tomato Leaf Mould', 'assets/dressers.png', true),
                itemCard('Tomato Blight','', true)
                
              ],
            )
          ],
        ),
      );}

//   Map data;

//   List userData;
// static String user = 'hahah';
//   static LoginData loginData = new LoginData(name: user);
// //   int _currentIndex = 0;
// //   // final List<Widget> menuItems = [HomeScreen(), Camera(), Feed(), Library()];
//   final String url =
//       'https://floating-oasis-94041.herokuapp.com/reinforcement/$user';
//   List userData;

//     Future getData() async {
//     http.Response res = await http.get(Uri.encodeFull(url));
//     data = json.decode(res.body);
//     setState(() {
//       userData = data['data'];
//       print(userData.toString());
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Container(
//       child: _buildHome(),
//     );
//   final String url =
//       'https://floating-oasis-94041.herokuapp.com/reinforcement/hahah';

//   Future getData() async {
//     http.Response res = await http.get(Uri.encodeFull(url));
//     data = json.decode(res.body);
//     setState(() {
//       userData = data['data'];
//       print(userData.toString());
//     });
//   }


  // void initState() {
  //   getData().then((onValue) => {super.initState(): url});
  //   //super.initState();
  //   /*then((onValue) => {Toast.makeText(userData).show();});*/
  // }

  Widget itemCard(String name, String imgPath , bool isFavourite , int voteCount){
    return Padding(
      padding: EdgeInsets.only(left: 15.0,right:15.0 , top: 15.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: 140.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgPath),fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(width: 4.0,),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                    )
                    ),
                    SizedBox(width: 45.0,),
                    Material(
                      elevation: isFavourite? 0.0 : 2.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isFavourite?Colors.grey.withOpacity(0.2) : Colors.white
                        ),
                        child: Center(
                          child: isFavourite? Icon(Icons.favorite , color: Colors.red,) : Icon(Icons.favorite_border)
                        ),
                      ),
                    ),  

                ],

                ),
                 SizedBox(height: 5.0,),
                    Container(
                      width: 175.0,
                      child: Text(
                        'A common disease for tomato plants',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey,
                          fontSize: 12.0
                        ),
                      ),
                    ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    SizedBox(width: 35.0,),
                    Container(
                      height: 30.0,
                      width: 50.0,
                      color: Colors.white,
                      child: Center(
                        child:Text(
                        '\$248',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      )
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 100.0,
                      color:Colors.white ,
                      child: Center(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight:FontWeight.bold,
                            color: Colors.white
                          )
                        ),
                      ),
                    )
                  ],
                )
            ],
            )
          ],
        ),
      ),

   );
}
}


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       child: Column(children: <Widget>[
// =======
// Widget build(BuildContext context) {
//    List userData;
//   return Scaffold(
//     body: Container(
//       child: ListView.builder(
//           itemCount: userData == null ? 0 : userData.length,
//           itemBuilder: (BuildContext context, index) {
//             return Card(
//               child: Column(
//                 children: <Widget>[
//                   _buildHome(),
//                   Image.network(userData[index]["photoUrl"]),
//                   Text('${userData[index]["disease"]}')
//                 ],
//               ),
//             );
//           }),
//     ),
//   );
// }

// //main display
// Widget _buildHome() {
//   return Scaffold(
//     body: ListView(
//       children: <Widget>[
// >>>>>>> 2a2afbd6a778793a91bdc531fcaad39a0627fa09
//         Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(
//                   height: 250.0,
//                   width: double.infinity,
//                   color: Colors.red,
//                 ),
//                 Positioned(
//                   bottom: 50.0,
//                   right: 100.0,
//                   child: Container(
//                     height: 400.0,
//                     width: 400.0,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(200.0),
//                       color: Colors.red.withOpacity(0.4),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 150.0,
//                   left: 100.0,
//                   child: Container(
//                     height: 300.0,
//                     width: 300.0,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(200.0),
//                       color: Colors.red.withOpacity(0.5),
//                     ),
//                   ),
//                 ),
//                 Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       SizedBox(height: 50.0),
//                       Padding(
//                         padding: EdgeInsets.only(left: 15.0),
//                         child: Text(
//                           'Hello , Farmer',
//                           style: TextStyle(
//                               fontFamily: 'Quicksand',
//                               fontSize: 30.0,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(height: 15.0),
//                       Padding(
//                         padding: EdgeInsets.only(left: 15.0),
//                         child: Text(
//                           'You Grow :',
//                           style: TextStyle(
//                               fontFamily: 'Quicksand',
//                               fontSize: 20.0,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: <Widget>[
//                           // SizedBox(
//                           //   width: 15.0,
//                           // ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               alignment: Alignment.centerLeft,
//                               height: 50.0,
//                               width: 50.0,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   border: Border.all(
//                                       color: Colors.white,
//                                       style: BorderStyle.solid,
//                                       width: 2.0),
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/farmer.jpg'),
//                                       fit: BoxFit.fill)),
//                             ),
//                           ),
//                           // SizedBox(
//                           //   width: MediaQuery.of(context).size.width - 120,
//                           // ),
//                           Container(
//                             alignment: Alignment.centerLeft,
//                             height: 50.0,
//                             width: 50.0,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10.0),
//                                 border: Border.all(
//                                     color: Colors.white,
//                                     style: BorderStyle.solid,
//                                     width: 2.0),
//                                 image: DecorationImage(
//                                     image: AssetImage('assets/farmer.jpg'))),
//                           ),
//                           Container(
//                             alignment: Alignment.centerLeft,
//                             height: 50.0,
//                             width: 50.0,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10.0),
//                                 border: Border.all(
//                                     color: Colors.white,
//                                     style: BorderStyle.solid,
//                                     width: 2.0),
//                                 image: DecorationImage(
//                                     image: AssetImage('assets/farmer.jpg'))),
//                           ),
//                           Container(
//                             alignment: Alignment.centerLeft,
//                             height: 50.0,
//                             width: 50.0,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10.0),
//                                 border: Border.all(
//                                     color: Colors.white,
//                                     style: BorderStyle.solid,
//                                     width: 2.0),
//                                 image: DecorationImage(
//                                     image: AssetImage('assets/farmer.jpg'))),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 25.0),
//                       Padding(
//                         padding: EdgeInsets.only(left: 15.0, right: 15.0),
//                         child: Material(
//                           elevation: 5.0,
//                           borderRadius: BorderRadius.circular(5.0),
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                                 border: InputBorder.none,
//                                 prefixIcon: Icon(
//                                   Icons.search,
//                                   color: Colors.deepOrange,
//                                   size: 30.0,
//                                 ),
//                                 contentPadding:
//                                     EdgeInsets.only(left: 15.0, top: 15.0),
//                                 hintText: 'Search',
//                                 hintStyle: TextStyle(
//                                     fontFamily: 'Quicksand',
//                                     color: Colors.grey)),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10.0),
//                       Container(
//                         height: 50,
//                             width: double.infinity,
//                             child: Column(
//                               children: <Widget>[
//                                 Text(userData[0]["name"]),
//                                 Image.network(userData[0]["photoUrl"], height: 20,),
//                               ],
//                             ),
//                       )
//                     ])
//               ],
//             ),
//             SizedBox(height: 100.0),
//           ],
//         ),
//       ]),
//     ));
//   }
// }

//main display