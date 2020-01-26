import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/vibrate.dart';
import 'package:flutter/material.dart';

/*class DrawerState extends StatefulWidget{
  createState() => DrawerSection();
}*/

//class DrawerSection extends State<DrawerState> with PreferredSizeWidget
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
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Vibration (False Value)'),
                Switch(
                  value: (false), //_determineDeviceVibration()),
                  onChanged: null, //_deviceVibrate(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Theme (True Value)'),
                Switch(
                  value: true,
                  onChanged: null,
                )
              ],
            ),
            FlatButton(
              child: Text('Legal'),
              onPressed: () {
                if (vibrateEnabled) {
                  VibrateDevice();
                }
                Navigator.pushNamed(context, Legal);
              },
            ),
            FlatButton(
              child: Text('How-to'),
              onPressed: () {
                if (vibrateEnabled) {
                  VibrateDevice();
                }
                Navigator.pushNamed(context, HowTo);
              },
            )
          ],
        ),
      ),
    );
  }
}
