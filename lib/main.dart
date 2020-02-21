/* main.dart - The entry point of the app */

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

import 'package:crdi_mobile_app/router.dart' as router;
import 'package:crdi_mobile_app/route_settings.dart';
import 'package:crdi_mobile_app/core/config.dart';
import 'package:flutter/material.dart';

void main() => runApp(CRDIApp());

class CRDIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CRDI Mobile App",
      theme: mainTheme(),
      onGenerateRoute: router.generateRoute,
      initialRoute: MainMenu,
    );
  }
}
