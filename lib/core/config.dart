/* core/config.dart - Helper functions and custom theme data */

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
import 'package:flutter/services.dart';

void portraitMode() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

void landscapeMode() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

void enableRotation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

void enterFullscreen() {
  SystemChrome.setEnabledSystemUIOverlays([]);
}

void exitFullscreen() {
  SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
}

// TODO Complete Theme
ThemeData mainTheme() {
  return ThemeData(
    brightness: Brightness.dark,
  );
}