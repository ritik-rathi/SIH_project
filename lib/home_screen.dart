import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    color: Colors.red,
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.red.withOpacity(0.4),
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
                        color: Colors.red.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 50.0),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Hello , Farmer',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'You Grow :',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // SizedBox(
                            //   width: 15.0,
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2.0),
                                    image: DecorationImage(
                                        image: AssetImage('assets/farmer.jpg'),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width - 120,
                            // ),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/farmer.jpg'))),
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
                                      width: 2.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/farmer.jpg'))),
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
                                      width: 2.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/farmer.jpg'))),
                            ),
                          ],
                        ),
                        SizedBox(height: 25.0),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.deepOrange,
                                    size: 30.0,
                                  ),
                                  contentPadding:
                                      EdgeInsets.only(left: 15.0, top: 15.0),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      fontFamily: 'Quicksand',
                                      color: Colors.grey)),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0)
                      ])
                ],
              ),
              SizedBox(height: 100.0),
              new Row(
                children: <Widget>[
                  new Container(
                    width: 90.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        new Stack(
                          children: <Widget>[
                            new Text(
                              '23°C',
                              style: new TextStyle(),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )

              // Stack(
              //   children: <Widget>[
              //     SizedBox(height: 10.0),
              //     Material(
              //         elevation: 1.0,
              //         child: Container(
              //           height: 75.0,
              //           color: Colors.white,
              //         )),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: <Widget>[
              //         Container(
              //           height: 75.0,
              //           width: MediaQuery.of(context).size.width / 4,
              //           child: Column(
              //             children: <Widget>[
              //               Container(
              //                 height: 50.0,
              //                 decoration: BoxDecoration(
              //                     image: DecorationImage(
              //                         image: AssetImage('assets/farmer.jpg'))),
              //               ),
              //               Text(
              //                 'Sofas',
              //                 style: TextStyle(
              //                   fontFamily: 'Quicksand',
              //                   fontSize: 15.0,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //         Container(
              //           height: 75.0,
              //           width: MediaQuery.of(context).size.width / 4,
              //           child: Column(
              //             children: <Widget>[
              //               Container(
              //                 height: 50.0,
              //                 decoration: BoxDecoration(
              //                     image: DecorationImage(
              //                         image:
              //                             AssetImage('assets/famer.jpg'))),
              //               ),
              //               Text(
              //                 'Wardrobes',
              //                 style: TextStyle(
              //                   fontFamily: 'Quicksand',
              //                   fontSize: 15.0,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //         Container(
              //           height: 75.0,
              //           width: MediaQuery.of(context).size.width / 4,
              //           child: Column(
              //             children: <Widget>[
              //               Container(
              //                 height: 50.0,
              //                 decoration: BoxDecoration(
              //                     image: DecorationImage(
              //                         image: AssetImage('assets/farmer.jpg'))),
              //               ),
              //               Text(
              //                 'Dressers',
              //                 style: TextStyle(
              //                   fontFamily: 'Quicksand',
              //                   fontSize: 15.0,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //         Container(
              //           height: 75.0,
              //           width: MediaQuery.of(context).size.width / 4,
              //           child: Column(
              //             children: <Widget>[
              //               Container(
              //                 height: 50.0,
              //                 decoration: BoxDecoration(
              //                     image: DecorationImage(
              //                         image: AssetImage('assets/farmer.jpg'))),
              //               ),
              //               Text(
              //                 'Desks',
              //                 style: TextStyle(
              //                   fontFamily: 'Quicksand',
              //                   fontSize: 15.0,
              //                 ),
              //               )
              //             ],
              //           ),
              //         )
              //       ],
              //     )
              //   ],
              // ),
            ],
          )
        ],
      ),
    );
  }
}
