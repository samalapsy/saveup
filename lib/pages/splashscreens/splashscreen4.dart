import 'package:flutter/material.dart';

class Splashscreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/images/safety.png')),
            Text(
              'Safety for you Money',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Build yoru savings with ease and dicipline',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                letterSpacing: 2,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
