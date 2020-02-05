/* drawer.dart - A drawer that is accessible throughout most of the app */

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

import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/vibrate.dart';
import 'package:flutter/material.dart';

class DrawerSection extends StatefulWidget with PreferredSizeWidget {
  DrawerSection();

  @override
  _DrawerSectionState createState() => _DrawerSectionState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _DrawerSectionState extends State<DrawerSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Vibration'),
                Switch(
                  value: (vibrateEnabled),
                  onChanged: (bool newValue) {
                    setState(
                      () {
                        vibrateEnabled = newValue;
                      },
                    ); //setState
                  }, //onChanged
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Theme (True Value)'),
                Switch(
                  value: true,
                  onChanged: null,
                )
              ],
            ),
            FlatButton(
              child: Text('Legal'),
              onPressed: () {
                VibrateDevice();
                Navigator.pushNamed(context, Legal);
              },
            ),
            FlatButton(
              child: Text('How-to'),
              onPressed: () {
                VibrateDevice();
                Navigator.pushNamed(context, HowTo);
              },
            ),
          ],
        ),
      ),
    );
  }
}
