/* profile_select.dart - Select/determine the test profile to be used */

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

import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/core/bottombar.dart';
import 'package:crdi_mobile_app/drawer.dart';
import 'package:crdi_mobile_app/route_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TopAppBar('Profile Select', true),
        drawer: DrawerSection(),
        body: Center(
          child: Column(
            children: <Widget>[
              Spacer(),
              //TextField
              Spacer(),
              ProfileDropDown(),
              Spacer(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(true),
      ),
    );
  }
}

class ProfileDropDown extends StatefulWidget {
  @override
  _ProfileDropDownState createState() {
    return _ProfileDropDownState();
  }
}

class _ProfileDropDownState extends State<ProfileDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Profile>(
      value: test,
      onChanged: (Profile newValue) {
        setState(() {
          profileID = newValue.id;
          profileName = 'Profile ' + profileID.toString();
          print(profileName);
        });
      },
      items: Profile.getProfiles().map((Profile sel) {
        return DropdownMenuItem<Profile>(
          value: sel,
          child: Text('Profile ' + sel.id.toString()),
        );
      }).toList(),
      hint: profileName == '' ? Text('Select A Profile') : Text(profileName),
    );
  }
}
