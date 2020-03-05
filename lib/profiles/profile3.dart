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
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: makeNonControlDecoration(
                      location: ProfileContainerLocation.leftmost,
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Text(
                          'PROFILE: 03\n\n'
                          'Respond to the music by doing xyz, abc, and asdf.  Make sure that you check out the ABCDEFG when you XYZ.',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      alignment: Alignment(0.0, 0.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: makeNonControlDecoration(
                      location: ProfileContainerLocation.rightmost,
                    ),
                    height: double.infinity,
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
          Flexible(
            flex: 6,
            fit: FlexFit.tight,
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
                              innerCircleColor: Color(0xFF222222),
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
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.rightmost,
                    ),
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
