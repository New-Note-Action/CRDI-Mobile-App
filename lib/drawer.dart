import 'package:crdi_mobile_app/route_names.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class DrawerSection extends StatelessWidget with PreferredSizeWidget {
  DrawerSection();

  bool _determineDeviceVibration() {
    return (Vibration.hasVibrator() != null);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey[600],
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Vibration (False Value)'),
                Switch(
                  value: (_determineDeviceVibration()),
                  onChanged: null,
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
                Navigator.pushNamed(context, Legal);
              },
              textColor: Colors.white,
            ),
            FlatButton(
              child: Text('How-to'),
              onPressed: () {
                Navigator.pushNamed(context, HowTo);
              },
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
