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

import 'package:crdi_mobile_app/route_settings.dart';
import 'package:crdi_mobile_app/vibrate.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
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
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              "Settings & Help",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryVariant,
            ),
          ),
          SwitchListTile(
            title: Text('Vibration'),
            value: (vibrateEnabled),
            onChanged: (bool newValue) {
              setState(
                () {
                  vibrateEnabled = newValue;
                },
              ); //setState
            }, //onChanged
          ),
          ListTile(
            title: Text('About and Legal'),
            onTap: () {
              VibrateDevice();
              Navigator.pushNamed(context, Legal);
            },
          ),
          ListTile(
            title: Text('How To'),
            onTap: () {
              VibrateDevice();
              Navigator.pushNamed(context, HowTo);
            },
          ),
        ],
      ),
    );
  }
}
