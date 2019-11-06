import 'package:flutter/material.dart';

class DrawerSection extends StatelessWidget with PreferredSizeWidget {
  //final Column things;
  DrawerSection();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey[600],
        /*child: things*/
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Vibration (False Value)'),
                Switch(
                  value: false,
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
              onPressed: null,
              textColor: Colors.white,
            ),
            FlatButton(
              child: Text('How-to'),
              onPressed: null,
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
