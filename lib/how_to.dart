/* how_to.dart - Present static instructions on using the app/taking a test */

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
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'dart:async' show Future;
//import 'package:flutter/services.dart' show rootBundle;
import 'package:crdi_mobile_app/core/topbar.dart';
//import 'package:crdi_mobile_app/core/config.dart';
import 'package:crdi_mobile_app/core/bottombar.dart';
import 'package:crdi_mobile_app/drawer.dart';

class HowToClass extends StatelessWidget {
  Future<String> _getStringOfHowToFile(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString("assets/howto/howtouse.html");
  }

  @override
  Widget build(BuildContext buildContext) {
    return FutureBuilder(
      future: _getStringOfHowToFile(buildContext),
      builder: (BuildContext context, AsyncSnapshot<String> text) {
        return SafeArea(
          child: Scaffold(
            appBar: TopAppBar("How To", true),
            drawer: DrawerSection(),
            bottomNavigationBar: BottomNavBar(false),
            body: SingleChildScrollView(
              child: Html(
                padding: const EdgeInsets.all(5.0),
                data: text.data.toString(),
              ),
            ),
          ),
        );
      },
    );
  }
}
