import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget with PreferredSizeWidget {
  final bool includePlayButton;
  BottomNavBar(this.includePlayButton);

  @override
  Widget build(BuildContext context) {
    if (includePlayButton) {
      return BottomNavigationBar(
        backgroundColor: Colors.blueGrey[100],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            title: Text('Go Back'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.green,
            ),
            title: Text('Begin'),
          )
        ],
      );
    } else {
      return BottomNavigationBar(
        backgroundColor: Colors.blueGrey[100],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            title: Text('Go Back'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            title: Text('Home'),
          ),
        ],
      );
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
