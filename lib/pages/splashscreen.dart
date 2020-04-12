import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:saveup/pages/splashscreens/splashscreen1.dart';
import 'package:saveup/pages/splashscreens/splashscreen2.dart';
import 'package:saveup/pages/splashscreens/splashscreen3.dart';
import 'package:saveup/pages/splashscreens/splashscreen4.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final PageView pageView = PageView(
    reverse: false,
    children: <Widget>[
      Splashscreen1(),
      Splashscreen2(),
      Splashscreen3(),
      Splashscreen4(),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(67, 71, 116, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: pageView,
          ),
        ),
      ),
    );
  }
}
