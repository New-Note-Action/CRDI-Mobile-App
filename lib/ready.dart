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

import 'package:crdi_mobile_app/core/config.dart';
import 'package:flutter/material.dart';
import 'package:crdi_mobile_app/route_settings.dart';
//import 'package:crdi_mobile_app/drawer.dart';
//import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:flutter/widgets.dart';

class ReadyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //appBar: TopAppBar("Test [ID]", true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '\nTest [ID]:\nPress "Start" to begin',
              style: Theme.of(context).textTheme.display1,
              textAlign: TextAlign.center,
            ),
            Divider(),
            Spacer(),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, Testing);
              },
              child: Text(
                'Start',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Spacer(),
            RaisedButton(
              onPressed: () {
                enableRotation();
                Navigator.pop(context);
              },
              child: Text(
                'Back',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
