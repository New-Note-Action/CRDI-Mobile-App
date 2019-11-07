import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/core/bottombar.dart';
import 'package:crdi_mobile_app/core/config.dart';
import 'package:crdi_mobile_app/drawer.dart';
import 'package:crdi_mobile_app/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TopAppBar('Profile Select', true),
        drawer: DrawerSection(),
        body: ProfileDropDown(),
        bottomNavigationBar: BottomNavBar(false),
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
  String _path;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          DropdownButton<String>(
            items: [
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Text('None'),
                  ],
                ),
                value: 'profile_0',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(Icons.filter_1),
                    Text('Profile 1'),
                  ],
                ),
                value: 'profile_1',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(Icons.filter_2),
                    Text('Profile 2'),
                  ],
                ),
                value: 'profile_2',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(Icons.filter_3),
                    Text('Profile 3'),
                  ],
                ),
                value: 'profile_3',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(Icons.filter_4),
                    Text('Profile 4'),
                  ],
                ),
                value: 'profile_4',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(Icons.filter_5),
                    Text('Profile 5'),
                  ],
                ),
                value: 'profile_5',
              ),
            ],
            onChanged: (String value) {
              setState(() {
                _path = value;
              });
            },
            hint: Text('Select A Profile'),
            value: _path,
          ),
          Spacer(),
          Spacer(),
        ],
      ),
    );
  }
}
