/* profile17.dart - T + T + T */

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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:crdi_mobile_app/inputs/switch.dart';
import 'package:crdi_mobile_app/profiles/profile_parts.dart';

class Profile17 extends StatelessWidget {
  final String name;

  Profile17({this.name = 'Profile 17'});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, allowFontScaling: false);
    print(ScreenUtil.bottomBarHeight);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: makeNonControlDecoration(
                  location: ProfileContainerLocation.leftmost,
                ),
                width: ScreenUtil.screenWidthDp * 0.8,
                height: ScreenUtil.screenHeightDp * 0.4,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Text(
                      name + '\n\n' +
                          defaultProfileInstructions,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center),
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
              Container(
                decoration: makeNonControlDecoration(
                  location: ProfileContainerLocation.rightmost,
                ),
                width: ScreenUtil.screenWidthDp * 0.2,
                height: ScreenUtil.screenHeightDp * 0.4,
                child: IconButton(
                  alignment: Alignment(0.0, 0.0),
                  icon: Icon(Icons.pause_circle_outline),
                  color: Colors.white,
                  iconSize: ScreenUtil.screenWidthDp * 0.1,
                  onPressed: () {
                    profilePauseDialog(context);
                    print("Pause Button Hit");
                  },
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSwitchInput(label: 'Vertical Switch 1'),
              VerticalSwitchInput(label: 'Vertical Switch 2'),
              VerticalSwitchInput(label: 'Vertical Switch 3'),
            ],
          ),
        ],
      ),
    );
  }
}
