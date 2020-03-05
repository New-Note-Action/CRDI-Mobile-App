/* testpage.dart - Testing screen for the user/participant */

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
//import 'package:flutter/services.dart';
import 'package:crdi_mobile_app/profiles/profile1.dart';
import 'package:crdi_mobile_app/profiles/profile2.dart';
import 'package:crdi_mobile_app/profiles/profile3.dart';
import 'package:crdi_mobile_app/profiles/profile4.dart';
import 'package:crdi_mobile_app/profiles/profile5.dart';

//import 'package:crdi_mobile_app/core/config.dart';

// ignore: must_be_immutable
class TestingPage extends StatelessWidget {
  //int _value = 1;

  int profile = 2;

  int joystickX = 0;
  int joystickY = 0;

  int sliderValue = 0;

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);

    if (profile == 1) {
      return Profile1();
    }

    if (profile == 2) {
      return Profile2();
    }

    if (profile == 3) {
      return Profile3();
    }

    if (profile == 4) {
      return Profile4();
    }

    if (profile == 5) {
      return Profile5();
    }
  }
}
