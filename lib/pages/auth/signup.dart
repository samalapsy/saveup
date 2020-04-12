import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a
//https://medium.com/flutter-community/developing-for-multiple-screen-sizes-and-orientations-in-flutter-fragments-in-flutter-a4c51b849434

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  InputDecoration decoration(label) {
    return InputDecoration(
      labelText: label ?? null,
      border: OutlineInputBorder(),
      labelStyle: TextStyle(
        color: Color.fromRGBO(239, 235, 242, 1.0),
      ),
    );
  }

  TextStyle textStyle(fontWeight, font) {
    return TextStyle(
      fontSize: font ?? 30.0,
      color: Color.fromRGBO(239, 235, 242, 1.0),
      letterSpacing: 1.0,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  @override
  Widget build(BuildContext context) {
    String email;
    String password;

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
                    minHeight: MediaQuery.of(context).size.height),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      'Signup to get Started',
                      style: textStyle(FontWeight.bold, 30.0),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextField(
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            style: textStyle(FontWeight.normal, 20.0),
                            decoration: decoration('Full Name'),
                            onChanged: (value) {
                              email = value;
                            },
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            style: textStyle(FontWeight.normal, 20.0),
                            decoration: decoration('Email'),
                            onChanged: (value) {
                              email = value;
                            },
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            style: textStyle(FontWeight.normal, 20.0),
                            decoration: decoration('Phone Number'),
                            onChanged: (value) {
                              email = value;
                            },
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          TextField(
                            obscureText: true,
                            textInputAction: TextInputAction.send,
                            style: textStyle(FontWeight.normal, 20.0),
                            decoration: decoration('Password'),
                            onChanged: (value) {
                              password = value;
                            },
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Center(
                            child: RaisedButton(
                              color: Color.fromRGBO(220, 215, 247, 1.0),
                              onPressed: () {
                                dynamic data = {
                                  "email": email,
                                  "password": password,
                                };
                                print(data);
                                Navigator.pushReplacementNamed(
                                  context,
                                  '/landing',
                                  arguments: data,
                                );
                              },
                              textColor: Color.fromRGBO(76, 74, 87, 1.0),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/login',
                          );
                        },
                        child: Text(
                          'Already have an account? Login',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 0.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SizedBox(
                              height: 20.0,
                              width: double.infinity,
                              child: Divider(
                                color: Colors.teal.shade100,
                              ),
                            ),
                          ),
                          Text(
                            'OR',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 20.0,
                              width: double.infinity,
                              child: Divider(
                                color: Colors.teal.shade100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    RaisedButton(
//                  color: Colors.indigo.shade200,
                      color: Color.fromRGBO(66, 103, 178, 1.0),
                      onPressed: () {
                        print('Signup with Facebook');
                      },
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Signup with Facebook',
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    RaisedButton(
                      color: Color.fromRGBO(56, 161, 243, 1.0),
                      onPressed: () {
                        print('Signup with Twitter');
                      },
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Signup with Twitter',
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    RaisedButton(
                      color: Color.fromRGBO(219, 68, 55, 1.0),
                      onPressed: () {
                        print('Signup with Twitter');
                      },
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Signup with Google',
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
