// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:crdi_mobile_app/route_names.dart';
//import 'package:crdi_mobile_app/core/config.dart';

class TestingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

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
                    child: Text('Text Bar', style: TextStyle(color: Colors.white)),
                    alignment: Alignment(0.0, 0.0),
                    color: Colors.black87,
                  ),


                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.333,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child:
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Spacer(),
                          IconButton(
                            alignment: Alignment(0.0, 0.0),
                            icon: Icon(Icons.android),
                            //color: Colors.white,
                            onPressed: () {
                              print("I was Pressed");
                            },
                          ),
                          Spacer(),
                          Text('Tension\n', style: TextStyle(color: Colors.white)),
                        ]),


                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
                        left: BorderSide(width: 1.0, color: Colors.black),
                        right: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                    ),

                  ),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.334,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Text('Joystick', style: TextStyle(color: Colors.white)),
                    alignment: Alignment(0.0, 0.0),

                    decoration: const BoxDecoration(
                      color: Colors.grey,
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
                    child: Text('Slider', style: TextStyle(color: Colors.white)),
                    alignment: Alignment(0.0, 0.0),

                    decoration: const BoxDecoration(
                      color: Colors.grey,
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

