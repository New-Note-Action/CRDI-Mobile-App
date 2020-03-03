import 'package:flutter/material.dart';
import 'package:control_pad/control_pad.dart';
import 'package:crdi_mobile_app/route_settings.dart';
import 'package:crdi_mobile_app/inputs/button.dart';
import 'package:crdi_mobile_app/inputs/slider.dart';
import 'package:crdi_mobile_app/profiles/profile_parts.dart';

class Profile5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: makeNonControlDecoration(
                  location: ProfileContainerLocation.leftmost,
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Text(
                      'Respond to the music by doing xyz, abc, and asdf.  Make sure that you check out the ABCDEFG when you XYZ.',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center),
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
              Container(
                decoration: makeNonControlDecoration(
                  location: ProfileContainerLocation.rightmost,
                ),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.4,
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
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: makeControlDecoration(
                  location: ProfileContainerLocation.leftmost,
                ),
                width: MediaQuery.of(context).size.width * 0.333,
                height: MediaQuery.of(context).size.height * 0.6,
                child: AddButton(),
              ),
              Container(
                decoration: makeControlDecoration(
                  location: ProfileContainerLocation.inner,
                ),
                width: MediaQuery.of(context).size.width * 0.334,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Container(
                  margin:
                      const EdgeInsets.only(top: 3.0, left: 10.0, right: 10.0),
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
                          size: (MediaQuery.of(context).size.width * 0.26 <
                                  MediaQuery.of(context).size.height *
                                      0.5) //Check if quarter width is less than half height
                              ? MediaQuery.of(context).size.width *
                                  0.26 //If it is, set the size to quarter width
                              : MediaQuery.of(context).size.height * 0.5,
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
              Container(
                decoration: makeControlDecoration(
                  location: ProfileContainerLocation.rightmost,
                ),
                width: MediaQuery.of(context).size.width * 0.333,
                height: MediaQuery.of(context).size.height * 0.6,
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
            ],
          ),
        ],
      ),
    );
  }
}
