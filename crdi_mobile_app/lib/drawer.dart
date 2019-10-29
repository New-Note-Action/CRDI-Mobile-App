import 'package:flutter/material.dart';

//********************************
//SUBJECT TO CHANGE OVER THE WEEKEND OF 10/25-10/28
//********************************
class DrawerSection extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey[600],
        child: Column(
          children: <Widget>[
            Container(
              child: RaisedButton(
                child: Text('Change Theme Color'),
                onPressed: null,
              ),
            ),
            Text('People in Space'),
            Text('Potential Option Here'),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
