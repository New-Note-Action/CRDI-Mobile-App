import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget with PreferredSizeWidget {
  final String givenTitle;
  final bool hasDrawer;
  TopAppBar(this.givenTitle, this.hasDrawer);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: hasDrawer,
      title: Text(givenTitle),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
