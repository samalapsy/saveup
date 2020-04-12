import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a
//https://medium.com/flutter-community/developing-for-multiple-screen-sizes-and-orientations-in-flutter-fragments-in-flutter-a4c51b849434

class Selector extends StatefulWidget {
  @override
  _SelectorState createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  TextStyle textStyle(fontWeight, font) {
    return TextStyle(
      fontSize: font ?? 30.0,
      color: Color.fromRGBO(248, 240, 249, 1.0),
      letterSpacing: 1.0,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Color.fromRGBO(67, 71, 116, 1),
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100.0,
                    ),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/layers.png',
                            height: 80.0,
                            color: Color.fromRGBO(248, 240, 249, 1.0),
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Save Up',
                            style: textStyle(FontWeight.bold, 50.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70.0,
                    ),
                    RaisedButton(
                      color: Color.fromRGBO(67, 71, 116, 1.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      textColor: Colors.white,
                      shape: Border.all(
                        color: const Color.fromRGBO(220, 215, 247, 1.0),
                        width: 1.0,
                      ),
                      /*shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),*/
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    RaisedButton(
                      color: Color.fromRGBO(220, 215, 247, 1.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      textColor: Colors.black,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
