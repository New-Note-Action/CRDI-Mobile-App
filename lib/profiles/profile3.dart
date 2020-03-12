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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    decoration: makeNonControlDecoration(
                      location: ProfileContainerLocation.leftmost,
                    ),
                    padding: makeNonControlContainerPadding(),
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
                    // No padding for this container.
                    child: FittedBox(
                      child: IconButton(
                        icon: Icon(Icons.pause_circle_outline),
                        color: Colors.white,
                        padding: const EdgeInsets.only(),
                        onPressed: () {
                          profilePauseDialog(context);
                          print("Pause Button Hit");
                        },
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
                  flex: 3,
                  child: Container(
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.leftmost,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Excited',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: FractionallySizedBox(
                            widthFactor: 0.95,
                            heightFactor: 0.95,
                            child: ConstrainedBox(
                              constraints: BoxConstraints.expand(),
                              child: AddButton(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.leftmost,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Happiness',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: FractionallySizedBox(
                            widthFactor: 0.95,
                            heightFactor: 0.95,
                            child: FittedBox(
                              child: JoystickView(
                                iconsColor: Colors.white30,
                                backgroundColor: Colors.black54,
                                innerCircleColor: Color(0xFF222222),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.leftmost,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Tension',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: FractionallySizedBox(
                            widthFactor: 0.95,
                            heightFactor: 0.95,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: SliderExample(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
