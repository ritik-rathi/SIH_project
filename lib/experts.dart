import 'package:flutter/material.dart';

class Experts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: new LinearGradient(
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 1.0),
                colors: [Colors.red[100], Colors.green[100]])),
        child: Column(
          children: <Widget>[
            Center(
                child: new Text('Closest Agricultural Institute',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 8.0,
            ),
            Container(
              width: double.infinity,
              height: 400.0,
              child: Image.asset(
                'assets/images/amity.png',
                fit: BoxFit.fill,
              ),
            ),
            new Text('Amity Agricultural Institute ,Rajpura' , style: new TextStyle(color: Colors.black),),
            SizedBox(height: 30.0,),
            new Text('Contact on :-',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            new SizedBox(
              height: 20.0,
            ),
            new Text(
              'P.O.- Chunni kalan, District – Fatehgarh Sahib. Punjab 140406. : + 91 842 724 4882 : dolphinadmission@gmail.com',
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
