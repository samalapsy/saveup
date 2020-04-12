import 'package:flutter/material.dart';

class Splashscreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 130.0,
                ),
                Image(image: AssetImage('assets/images/transfer2.png')),
                Text(
                  'Send Money',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Send money to anyone anywhere',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 2,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 25.0),
                    child: GestureDetector(
                      onTap: () {
                        print('Skipped button pressed');
                        Navigator.pushReplacementNamed(context, '/selector');
                      },
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      print('Next Screen');
                    },
                    child: Icon(Icons.arrow_forward),
                    mini: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
