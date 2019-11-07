import 'package:crdi_mobile_app/route_names.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
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
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, MainMenu, (_) => false);
                  },
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
                  onPressed: null,
                ),
                Text('Begin'),
              ],
            ),
          ],
        ),
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
                  onPressed: () {
                    if (Navigator.canPop(context)) Navigator.pop(context);
                  },
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
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, MainMenu, (_) => false);
                  },
                ),
                Text('Home'),
              ],
            ),
            Spacer(),
          ],
        ),
      );
    }
  }
}
