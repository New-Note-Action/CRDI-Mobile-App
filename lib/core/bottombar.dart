/* core/bottombar.dart - The bottom navigation bar present thru most of app */

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

import 'package:crdi_mobile_app/core/config.dart';
import 'package:crdi_mobile_app/route_names.dart';
import 'package:flutter/material.dart';
//import 'package:crdi_mobile_app/test.dart';
import 'package:crdi_mobile_app/vibrate.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  final bool includePlayButton;
  double iconSizeOnScreen = 35;
  BottomNavBar(this.includePlayButton);

  @override
  Widget build(BuildContext context) {
    if (includePlayButton) {
      return BottomAppBar(
        child: Row(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.arrow_back,
                    //color: Colors.blue,
                  ),
                  onPressed: () {
                    VibrateDevice();
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                ),
                Text('Go Back')
              ],
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.home,
                    //color: Colors.red,
                  ),
                  onPressed: () {
                    VibrateDevice();
                    Navigator.pushNamedAndRemoveUntil(
                        context, MainMenu, (_) => false);
                    portraitMode();
                  },
                ),
                Text('Home'),
              ],
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.play_arrow,
                    //color: Colors.green,
                  ),
                  onPressed: () {
                    VibrateDevice();
                    Navigator.pushNamed(context, Ready);
                  },
                ),
                Text('Begin'),
              ],
            ),
          ],
        ),
      );
    } else {
      return BottomAppBar(
        child: Row(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.arrow_back,
                    //color: Colors.blue,
                  ),
                  onPressed: () {
                    VibrateDevice();
                    if (Navigator.canPop(context)) Navigator.pop(context);
                  },
                ),
                Text('Go Back')
              ],
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.home,
                    //color: Colors.red,
                  ),
                  onPressed: () {
                    VibrateDevice();
                    Navigator.pushNamedAndRemoveUntil(
                        context, MainMenu, (_) => false);
                  },
                ),
                Text('Home'),
              ],
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(Icons.pregnant_woman),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
