/* main_menu.dart - The initial route of the app */

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
import 'package:flutter/cupertino.dart';
import 'package:crdi_mobile_app/route_settings.dart';
import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/drawer.dart';

class MainMenuClass extends StatelessWidget {
  static BuildContext _theContext;
  final List<ListTile> _mainMenuItems = <ListTile>[
    ListTile(
      title: Text("New Test"),
      onTap: () => Navigator.pushNamed(_theContext, ProfileSelect),
    ),
    ListTile(
      title: Text("Export Results"),
      onTap: () => Navigator.pushNamed(_theContext, Export),
    ),
  ];

  @override
  Widget build(BuildContext buildContext) {
    _theContext = buildContext;
    return SafeArea(
      child: Scaffold(
        appBar: TopAppBar("CRDI Mobile App", true),
        drawer: DrawerSection(),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage(
                      "assets/Electronic-Component-Potentiometer.png"
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView.separated(
                itemCount: _mainMenuItems.length,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return _mainMenuItems[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
