/* route_settings.dart - Global variables with identifiers for routes */

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

//TODO Edit String Values to be more descriptive in case of errors?
const String MainMenu = 'Main Menu';
const String ProfileSelect = 'Profile Selection Screen';
const String Export = 'Submit Test Results';
const String HowTo = 'About the App';
const String Legal = 'Legal Information';
const String Ready = 'Ready to Begin';
const String Testing = 'Take a Test';

class TestArgs {
  final String testName;
  final int testNum;
  TestArgs(this.testName, this.testNum);
}
//TODO Individual Routes for separate Profiles?