// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new TestingPage(),
    );

  }
}



class TestingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      title: 'Testing Page',
      home: Scaffold(

        body: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Text('Text Bar'),
                      alignment: Alignment(0.0, 0.0),
                      color: Colors.indigoAccent.shade100,
                    ),


                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.333,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Text('button'),
                      alignment: Alignment(0.0, 0.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.333,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Text('joystick'),
                      alignment: Alignment(0.0, 0.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.333,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Text('slider'),
                      alignment: Alignment(0.0, 0.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                    ),

                  ],
                ),
            ]
            ),
          ),
        );
  }
}

