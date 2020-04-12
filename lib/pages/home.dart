import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:saveup/models/operations.dart';
//https://medium.com/flutter-community/developing-for-multiple-screen-sizes-and-orientations-in-flutter-fragments-in-flutter-a4c51b849434

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Card gridItem(icon, title) {
  return Card(
    child: Column(
      children: <Widget>[
        Icon(
          Icons.send,
          size: 100.0,
        ),
        Text(
          'Send Money',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 18.0,
          ),
        )
      ],
    ),
  );
}

class _HomeState extends State<Home> {
  List<Operations> actions = [
    Operations(image: 'Icons.send', title: "Send Money"),
    Operations(image: 'Icons.send', title: "Buy Airtime"),
    Operations(image: 'Icons.send', title: "Pay for Bills"),
    Operations(image: 'Icons.send', title: "DSTV"),
    Operations(image: 'Icons.send', title: "Electricity"),
    Operations(image: 'Icons.send', title: "Buy Data"),
  ];

  GridView gridView() {
    return GridView.count(
      crossAxisCount: actions.length,
      padding: EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      shrinkWrap: true,
      crossAxisSpacing: 3.0,
      childAspectRatio: 1.0,
      children: <Widget>[],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: gridView(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
