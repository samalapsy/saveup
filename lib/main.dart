import 'package:flutter/material.dart';
import 'package:saveup/landing.dart';
import 'package:saveup/pages/auth/login.dart';
import 'package:saveup/pages/auth/recover_password.dart';
import 'package:saveup/pages/auth/selector.dart';
import 'package:saveup/pages/auth/signup.dart';
import 'package:saveup/pages/home.dart';
import 'package:saveup/pages/records.dart';
import 'package:saveup/pages/savings.dart';
import 'package:saveup/pages/send_money.dart';
import 'package:saveup/pages/splashscreen.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Splashscreen(),
          '/selector': (context) => Selector(),
          '/login': (context) => Login(),
          '/signup': (context) => Signup(),
          '/recover': (context) => RecoverPassword(),
          '/landing': (context) => Landing(),
          '/home': (context) => Home(),
          '/saving': (context) => Savings(),
          '/send': (context) => SendMoney(),
          '/records': (context) => Records(),
        },
      ),
    );
