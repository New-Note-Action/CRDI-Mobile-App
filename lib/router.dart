/* router.dart - Routing backbone */

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
import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/core/config.dart';
import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/core/bottombar.dart';
import 'package:crdi_mobile_app/profile_select.dart';
import 'package:crdi_mobile_app/ready.dart';
import 'package:crdi_mobile_app/export.dart';
import 'package:crdi_mobile_app/how_to.dart';
import 'package:crdi_mobile_app/legal_info.dart';
import 'package:crdi_mobile_app/about.dart';
import 'package:crdi_mobile_app/main_menu.dart';
import 'package:crdi_mobile_app/testpage.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  //TODO Add paths to actual Features
  switch (settings.name) {
    case MainMenu:
      enableRotation();
      return MaterialPageRoute(
        builder: (context) => MainMenuClass(),
      );
    case Export:
      enableRotation();
      return MaterialPageRoute(
        builder: (context) => SubmitResults(),
      );
    case HowTo:
      enableRotation();
      return MaterialPageRoute(
        builder: (context) => HowToClass(),
      );
    case Legal:
      enableRotation();
      return MaterialPageRoute(
        builder: (context) => AboutClass(),
      );
    case ProfileSelect:
      enableRotation();
      return MaterialPageRoute(
        builder: (context) => SelectProfile(),
      );
    case Ready:
      landscapeMode();
      return MaterialPageRoute(
        builder: (context) => readyPage(),
      );
    case Testing:
      landscapeMode();
      return MaterialPageRoute(
        builder: (context) => TestingPage(),
      );
    default:
      enableRotation();
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          featureName: settings.name,
        ),
      );
  }
}

//TODO Add Global Navbars
//TODO Make look nicer
//TODO Make separate file?
class UndefinedView extends StatelessWidget {
  final String featureName;
  const UndefinedView({Key key, this.featureName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TopAppBar('Undefined Route', false),
        body: Center(
          child: Text(
            'The \'$featureName\' feature has not yet been implemented',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.grey[500],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        bottomNavigationBar: BottomNavBar(false),
      ),
    );
  }
}
