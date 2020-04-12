import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a
//https://medium.com/flutter-community/developing-for-multiple-screen-sizes-and-orientations-in-flutter-fragments-in-flutter-a4c51b849434

class RecoverPassword extends StatefulWidget {
  @override
  _RecoverPasswordState createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
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
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      'Recover Password',
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
//                            autofocus: true,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            style: textStyle(FontWeight.normal, 20.0),
                            decoration: decoration('Your Email'),
                            onChanged: (value) {
                              email = value;
                            },
                          ),
                          SizedBox(
                            height: 35.0,
                          ),
                          Center(
                            child: RaisedButton(
                              color: Color.fromRGBO(220, 215, 247, 1.0),
                              onPressed: () {
                                dynamic data = {
                                  "email": email,
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
                                  'Recover Password',
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
                      height: 35.0,
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
                          'I have an account, Login',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey.shade300,
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
