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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() => runApp(CRDIApp());

class CRDIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
      defaultBrightness: Brightness.dark,
      data: (brightness) => new ThemeData(
        brightness: brightness,
        scaffoldBackgroundColor: (brightness == Brightness.dark)
            ? Color(0xFF222222)
            : Color(0xFFF5F2E5),
        appBarTheme: new AppBarTheme(
          brightness: brightness,
          color: (brightness == Brightness.dark)
              ? Color(0xFF322365)
              : Color(0xFFE9D69C),
          textTheme: new TextTheme(
            title: new TextStyle(
              color: (brightness == Brightness.dark)
                  ? Color(0xFFFFFFFF)
                  : Color(0xFF606060),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconTheme: new IconThemeData(
            color: (brightness == Brightness.dark)
                ? Color(0xFFFFFFFF)
                : Color(0xFF606060),
          ),
        ),
        bottomAppBarColor: (brightness == Brightness.dark)
            ? Color(0xFF322365)
            : Color(0xFFE9D69C),
        iconTheme: new IconThemeData(
          color: (brightness == Brightness.dark)
              ? Color(0xFFFFFFFF)
              : Color(0xFF606060),
        ),
        buttonTheme: new ButtonThemeData(
          buttonColor: (brightness == Brightness.dark)
              ? Color(0xFF322365)
              : Color(0xFFE9D69C),
          //disabledColor: Color(0xFF000000),
          //focusColor: Color(0xFF000000),
          //hoverColor: Color(0xFF000000),
          //highlightColor: Color(0xFF000000),
          splashColor: (brightness == Brightness.dark)
              ? Color(0xFF322365)
              : Color(0xFFE9D69C),
        ),
        textTheme: new TextTheme(
          body1: new TextStyle(
            color: (brightness == Brightness.dark)
                ? Color(0xFFFFFFFF)
                : Color(0xFF000000),
          ),
          display1: new TextStyle(
            color: (brightness == Brightness.dark)
                ? Color(0xFFFFFFFF)
                : Color(0xFF000000),
            fontSize: 32,
          ),
          button: new TextStyle(
            color: (brightness == Brightness.dark)
                ? Color(0xFFFFFFFF)
                : Color(0xFF606060),
          ),
        ),
        dividerTheme: new DividerThemeData(
          thickness: 1,
          color: (brightness == Brightness.dark)
              ? Color(0xFFFFFFFF)
              : Color(0xFF000000),
        ),
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'CRDI Mobile App',
          theme: theme,
          onGenerateRoute: router.generateRoute,
          initialRoute: MainMenu,
        );
      },
    );
  }
}

//size: (ScreenUtil.screenWidthDp * 0.26 <
//ScreenUtil.screenHeightDp * 0.5) //Check if quarter width is less than half height
//? ScreenUtil.screenWidthDp * 0.26    //If it is, set the size to quarter width
//: ScreenUtil.screenHeightDp * 0.5,
