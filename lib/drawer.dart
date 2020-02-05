import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/vibrate.dart';
import 'package:flutter/material.dart';

class DrawerSection extends StatefulWidget with PreferredSizeWidget {
  DrawerSection();

  @override
  _DrawerSectionState createState() => _DrawerSectionState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _DrawerSectionState extends State<DrawerSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SwitchListTile(
            title: Text('Vibration'),
            value: (vibrateEnabled),
            onChanged: (bool newValue) {
              setState(
                () {
                  vibrateEnabled = newValue;
                },
              ); //setState
            }, //onChanged
          ),
          SwitchListTile(
            title: Text('Theme (True Value)'),
            value: true,
            onChanged: null,
          ),
          ListTile(
            title: Text('Legal'),
            onTap: () {
              VibrateDevice();
              Navigator.pushNamed(context, Legal);
            },
          ),
          ListTile(
            title: Text('How-to'),
            onTap: () {
              VibrateDevice();
              Navigator.pushNamed(context, HowTo);
            },
          ),
        ],
      ),
    );
  }
}
