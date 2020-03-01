/* profiles/profile_parts.dart - Common code between profile pages */

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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final BoxDecoration profilePartNonControlDecoration = BoxDecoration(
  color: Color(0x00000000),
  border: Border(
    top: BorderSide(width: 1.0, color: Colors.white30),
    left: BorderSide(width: 1.0, color: Colors.white30),
    right: BorderSide(width: 1.0, color: Colors.white30),
    bottom: BorderSide(width: 1.0, color: Colors.white30),
  ),
);

final BoxDecoration profilePartControlDecoration = BoxDecoration(
  color: Color(0x00000000),
  border: Border(
    //top: BorderSide(width: 1.0, color: Colors.black),
    left: BorderSide(width: 1.0, color: Colors.white30),
    right: BorderSide(width: 1.0, color: Colors.black),
    bottom: BorderSide(width: 1.0, color: Colors.black),
  ),
);
