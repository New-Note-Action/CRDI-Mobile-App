import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:control_pad/control_pad.dart';

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

class JoystickInput extends StatelessWidget {
  final String label;
  JoystickInput({this.label = ''});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidthDp / 3,
      height: ScreenUtil.screenHeightDp * .6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          JoystickView(
            iconsColor: Colors.white30,
            backgroundColor: Colors.black54,
            innerCircleColor: Color(0xFF222222),
            size: (ScreenUtil.screenWidthDp / 4 <
                    ScreenUtil.screenHeightDp /
                        2) //Check if quarter width is less than half height
                ? ScreenUtil.screenWidthDp /
                    4 //If it is, set the size to quarter width
                : ScreenUtil.screenHeightDp / 2,
          ),
          Spacer(),
          Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
