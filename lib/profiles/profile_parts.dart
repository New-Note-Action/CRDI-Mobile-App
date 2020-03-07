/* profiles/profile_parts.dart - Common code between profile pages */

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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crdi_mobile_app/route_settings.dart';

enum ProfileContainerLocation {
  // Do not reorder these; the values for these enums are used in bitwise
  // operations when generating borders.
  inner, // 0
  leftmost, // 1
  rightmost, // 2
  only, // 3
}

BoxDecoration makeNonControlDecoration(
    {@required ProfileContainerLocation location}) {
  return BoxDecoration(
    border: Border(
      top: BorderSide(color: Colors.white30),
      left: BorderSide(color: Colors.white30),
      bottom: BorderSide(color: Colors.white30),
      // FIXME: For value for false in following ternary:
      // Fall back on Border's default value for 'right',
      // instead of hard-coding its current default value.
      right: (location.index & ProfileContainerLocation.rightmost.index != 0)
          ? BorderSide(color: Colors.white30)
          : BorderSide.none,
    ),
  );
}

final BoxDecoration profilePartNonControlDecoration = BoxDecoration(
  border: Border.all(color: Colors.white30),
);

BoxDecoration makeControlDecoration(
    {@required ProfileContainerLocation location}) {
  return BoxDecoration(
    border: Border(
      left: BorderSide(
        color: (location.index & ProfileContainerLocation.leftmost.index != 0)
            ? Colors.white30
            : Colors.black,
      ),
      right: BorderSide(
        color: (location.index & ProfileContainerLocation.rightmost.index != 0)
            ? Colors.white30
            : Colors.black,
      ),
      bottom: BorderSide(color: Colors.black),
    ),
  );
}

final BoxDecoration profilePartControlDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(width: 1.0, color: Colors.black),
    left: BorderSide(width: 1.0, color: Colors.white30),
    right: BorderSide(width: 1.0, color: Colors.black),
    bottom: BorderSide(width: 1.0, color: Colors.black),
  ),
);

void profilePauseDialog(context) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("Test Paused"),
        //content: new Text("Resume Or End"),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("Resume"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          new FlatButton(
            child: new Text("End"),
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(MainMenu, (_) => false);
            },
          ),
        ],
      );
    },
  );
}
