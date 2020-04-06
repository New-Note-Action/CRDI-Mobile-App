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


int profileID = 0;
String profileName = '';
String testID = '';
String fileName = '';
Profile test;






class Profile {
  final int id;
  final String layout;

  Profile(this.id, this.layout);

  static List<Profile> getProfiles() {
    return <Profile>[
      Profile(1,'VS'),
      Profile(2,'HS'),
      Profile(3,'J'),
      Profile(4,'T'),
      Profile(5,'HS|VS'),
      Profile(6,'J|VS'),
      Profile(7,'B'),
      Profile(8,'B|B'),
      Profile(9,'B|B|B'),
      Profile(10,'VS|B'),
      Profile(11,'J|B'),
      Profile(12,'VS|J'),
      Profile(13,'HS|J'),
      Profile(14,'T|VS'),
      Profile(15,'T|HS'),
      Profile(16,'T|J'),
      Profile(17,'T|T|T'),
    ];
  }
}

