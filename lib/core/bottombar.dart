import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final bool includePlayButton;
  double iconSizeOnScreen = 35;
  BottomNavBar(this.includePlayButton);

  @override
  Widget build(BuildContext context) {
    if (includePlayButton) {
      return BottomAppBar(
        child: Row(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                  ),
                ),
                Text('Go Back')
              ],
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
                Text('Home'),
              ],
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.grey,
                  ),
                ),
                Text('Begin'),
              ],
            ),
          ],
        ),

        /*backgroundColor: Colors.blueGrey[100],
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
              color: Colors.grey,
            ),
            title: Text('Begin'),
          )
        ],*/
      );
    } else {
      return BottomAppBar(
        child: Row(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                  ),
                ),
                Text('Go Back')
              ],
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: iconSizeOnScreen,
                  icon: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
                Text('Home'),
              ],
            )
          ],
        ),
      );

      /*backgroundColor: Colors.blueGrey[100],
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
        ]*/
    }
  }
}
