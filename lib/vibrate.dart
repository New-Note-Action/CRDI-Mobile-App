/* vibration.dart - Helper/wrapper class for mobile device vibration */

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

import 'package:vibration/vibration.dart';

bool vibrateEnabled = true;

class VibrateDevice {
  VibrateDevice() {
    if (vibrateEnabled) {
      Vibration.vibrate(duration: 50);
      print('vibrated');
    }
  }
}
