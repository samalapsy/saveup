import 'package:flutter/material.dart';

class Splashscreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('assets/images/pay.png')),
              Text(
                'Pay for Utilities',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Fastest and easiet to pay for your utilities',
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
      ),
    );
  }
}
