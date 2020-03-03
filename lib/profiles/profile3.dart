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
                    decoration: profilePartNonControlDecoration,
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Text(
                          'Respond to the music by doing xyz, abc, and asdf.  Make sure that you check out the ABCDEFG when you XYZ.',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      alignment: Alignment(0.0, 0.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: double.infinity,
                    decoration: profilePartNonControlDecoration,
                    child: IconButton(
                      alignment: Alignment(0.0, 0.0),
                      icon: Icon(Icons.pause_circle_outline),
                      color: Colors.white,
                      iconSize: MediaQuery.of(context).size.width * 0.1,
                      onPressed: () {
                        profilePauseDialog(context);
                        print("Pause Button Hit");
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  child: Container(
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
                    decoration: profilePartControlDecoration,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: profilePartControlDecoration,
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 3.0, left: 10.0, right: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Spacer(),
                          Container(
                            child: JoystickView(
                              iconsColor: Colors.white30,
                              backgroundColor: Colors.black54,
                              innerCircleColor: Colors.black26,
                              size: MediaQuery.of(context).size.width * 0.26,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Spacer(),
//slider goes here
                        SliderExample(),
                        Spacer(),
                        Text(
                          'Tension\n',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    alignment: Alignment(0.0, 0.0),
                    decoration: profilePartControlDecoration,
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
