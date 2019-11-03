import 'package:flutter/material.dart';

class DrawerSection extends StatelessWidget with PreferredSizeWidget {
  final Column things;
  DrawerSection(this.things);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(color: Colors.blueGrey[600], child: things),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
