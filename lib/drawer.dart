import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/vibrate.dart';
import 'package:flutter/material.dart';

/*class DrawerState extends StatefulWidget{
  createState() => DrawerSection();
}*/

//class DrawerSection extends State<DrawerState> with PreferredSizeWidget
class DrawerSection extends StatelessWidget with PreferredSizeWidget {
  DrawerSection();

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
                Text('Vibration'),
                Switch(
                  value: (false),
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
                VibrateDevice();
                Navigator.pushNamed(context, Legal);
              },
              textColor: Colors.white,
            ),
            FlatButton(
              child: Text('How-to'),
              onPressed: () {
                VibrateDevice();
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
