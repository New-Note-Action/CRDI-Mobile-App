import 'package:flutter/material.dart';

//********************************
//SUBJECT TO CHANGE OVER THE WEEKEND OF 10/25-10/28
//********************************
class BottomNavBar {
  bottomNavBar() {
    BottomNavigationBar();
  }

  BottomNavigationBar addBottomNavBar() {
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
  }
}
