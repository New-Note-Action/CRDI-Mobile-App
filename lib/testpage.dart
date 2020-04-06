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
import 'package:crdi_mobile_app/route_settings.dart';
import 'package:crdi_mobile_app/profiles/profile1.dart';
import 'package:crdi_mobile_app/profiles/profile2.dart';
import 'package:crdi_mobile_app/profiles/profile3.dart';
import 'package:crdi_mobile_app/profiles/profile4.dart';
import 'package:crdi_mobile_app/profiles/profile5.dart';
import 'package:crdi_mobile_app/profiles/profile6.dart';
import 'package:crdi_mobile_app/profiles/profile7.dart';
import 'package:crdi_mobile_app/profiles/profile8.dart';
import 'package:crdi_mobile_app/profiles/profile9.dart';
import 'package:crdi_mobile_app/profiles/profile10.dart';
import 'package:crdi_mobile_app/profiles/profile11.dart';
import 'package:crdi_mobile_app/profiles/profile12.dart';
import 'package:crdi_mobile_app/profiles/profile13.dart';
import 'package:crdi_mobile_app/profiles/profile14.dart';
import 'package:crdi_mobile_app/profiles/profile15.dart';
import 'package:crdi_mobile_app/profiles/profile16.dart';
import 'package:crdi_mobile_app/profiles/profile17.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';



Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}
Future<File> get _localFile async {
  final path = await _localPath;
  var now = new DateTime.now();
  fileName = '$path' + '/' + now.toIso8601String() + '_' + '$testID' + '.csv';
  print('$path' + '/' + now.toIso8601String() + '_' + '$testID' + '.csv');
  return File('$path' + '/' + now.toIso8601String() + '_' + '$testID' + '.csv');
}
Future<File> writeInput(String input) async {
  final file = await _localFile;

  // Write the file.
  return file.writeAsString(input);
}


//import 'package:crdi_mobile_app/core/config.dart';

// ignore: must_be_immutable
class TestingPage extends StatelessWidget {
  //int _value = 1;
  int joystickX = 0;
  int joystickY = 0;
  int sliderValue = 0;




  var testing123 = writeInput("asdf hello");
  var testing1234 = writeInput("asdf hello");







  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    print(testing123.toString());
    print(fileName);
    switch(profileID) {
      case 1: {
        return Profile1();
      }
      break;
      case 2: {
        return Profile2();
      }
      break;
      case 3: {
        return Profile3();
      }
      break;
      case 4: {
        return Profile4();
      }
      break;
      case 5: {
        return Profile5();
      }
      break;
      case 6: {
        return Profile6();
      }
      break;
      case 7: {
        return Profile7();
      }
      break;
      case 8: {
        return Profile8();
      }
      break;
      case 9: {
        return Profile9();
      }
      break;
      case 10: {
        return Profile10();
      }
      break;
      case 11: {
        return Profile11();
      }
      break;
      case 12: {
        return Profile12();
      }
      break;
      case 13: {
        return Profile13();
      }
      break;
      case 14: {
        return Profile14();
      }
      break;
      case 15: {
        return Profile15();
      }
      break;
      case 16: {
        return Profile16();
      }
      break;
      case 17: {
        return Profile17();
      }
      break;
      default: {
        return Profile1(name: profileName,);
      }
      break;
    }
  }
}
