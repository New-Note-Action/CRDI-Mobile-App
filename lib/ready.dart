/* ready.dart - The route that appears before the user begins a test/session */

/*
    Copyright (C) 2019-2020 "New Note Action" (John Elik, Cole Howard,
    Sean Pohl, Tyler Tichler)

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:crdi_mobile_app/route_names.dart';
//import 'package:crdi_mobile_app/core/config.dart';

class readyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.black,
            child: Column(children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(),

                    //width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                ],
              ),
              Row(
                //crossAxisAlignment:CrossAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Text('Tap "Start" when the test begins.',
                        style: TextStyle(color: Colors.white)),
                    alignment: Alignment(0.0, 0.0),
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border(
                        top: BorderSide(width: 3, color: Colors.white30),
                        left: BorderSide(width: 3, color: Colors.white30),
                        right: BorderSide(width: 3, color: Colors.white30),
                        bottom: BorderSide(width: 3, color: Colors.white30),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border(
                          top: BorderSide(width: 3, color: Colors.white30),
                          left: BorderSide(width: 3, color: Colors.white30),
                          right: BorderSide(width: 3, color: Colors.white30),
                          bottom: BorderSide(width: 3, color: Colors.white30),
                        ),
                      ),

                      //width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: FlatButton(
                        onPressed: () {
                          print("Start was Pressed");
                          Navigator.pushNamed(context, Testing);
                        },
                        child: Text('Start',
                            style: TextStyle(color: Colors.white)),
                      )),
                ],
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border(
                          top: BorderSide(width: 3, color: Colors.white30),
                          left: BorderSide(width: 3, color: Colors.white30),
                          right: BorderSide(width: 3, color: Colors.white30),
                          bottom: BorderSide(width: 3, color: Colors.white30),
                        ),
                      ),

                      //width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: FlatButton(
                        onPressed: () {
                          print("Back was Pressed");
                        },
                        child:
                        Text('Back', style: TextStyle(color: Colors.white)),
                      )),
                ],
              ),
              Spacer(),
            ]),
          ),
        ));
  }
}
