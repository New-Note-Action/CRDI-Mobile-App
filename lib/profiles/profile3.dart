import 'package:control_pad/control_pad.dart';
import 'package:flutter/material.dart';

import 'package:crdi_mobile_app/route_settings.dart';
import 'package:crdi_mobile_app/inputs/button.dart';
import 'package:crdi_mobile_app/inputs/joystick.dart';

import 'package:crdi_mobile_app/inputs/slider.dart';
import 'package:crdi_mobile_app/profiles/profile_parts.dart';

class Profile3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    decoration: makeNonControlDecoration(
                      location: ProfileContainerLocation.leftmost,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'PROFILE: 03\n\n'
                        'Respond to the music by doing xyz, abc, and asdf.  Make sure that you check out the ABCDEFG when you XYZ.',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: makeNonControlDecoration(
                      location: ProfileContainerLocation.rightmost,
                    ),
                    child: SizedBox.expand(
                      child: FittedBox(
                        child: IconButton(
                          icon: Icon(Icons.pause_circle_outline),
                          color: Colors.white,
                          onPressed: () {
                            profilePauseDialog(context);
                            print("Pause Button Hit");
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.leftmost,
                    ),
                    child: Column(
                      children: [
                        Spacer(),
                        AddButton(),
                        Spacer(),
                        Text(
                          'Excited\n',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.inner,
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Column(
                        children: <Widget>[
                          Spacer(),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: JoystickView(
                              iconsColor: Colors.white30,
                              backgroundColor: Colors.black54,
                              innerCircleColor: Color(0xFF222222),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Happiness\n',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.rightmost,
                    ),
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        SliderExample(),
                        Spacer(),
                        Text(
                          'Tension\n',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
