import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget with PreferredSizeWidget {
  final String givenTitle;
  TopAppBar(this.givenTitle);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(givenTitle),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
