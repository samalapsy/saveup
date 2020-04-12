import 'package:flutter/material.dart';
import 'package:saveup/pages/home.dart';
import 'package:saveup/pages/records.dart';
import 'package:saveup/pages/savings.dart';
import 'package:saveup/pages/send_money.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.grey.shade400,
              bottomNavigationBar: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.send),
                  ),
                  Tab(
                    icon: Icon(Icons.pie_chart),
                  ),
                  Tab(
                    icon: Icon(Icons.money_off),
                  ),
                ],
              ),
              body: TabBarView(
                children: [
                  Home(),
                  SendMoney(),
                  Records(),
                  Savings(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
