import 'package:crdi_mobile_app/inputs/switch.dart';
import 'package:flutter/material.dart';
import 'package:control_pad/control_pad.dart';
//import 'package:crdi_mobile_app/route_settings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:crdi_mobile_app/inputs/button.dart';
import 'package:crdi_mobile_app/inputs/slider.dart';
//import 'package:crdi_mobile_app/inputs/switch.dart';
import 'package:crdi_mobile_app/profiles/profile_parts.dart';

class Profile2 extends StatelessWidget {
  Widget build(BuildContext context) {
    ScreenUtil.init(context, allowFontScaling: false);
    print(ScreenUtil.bottomBarHeight);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: makeNonControlDecoration(
                  location: ProfileContainerLocation.leftmost,
                ),
                width: ScreenUtil.screenWidthDp * 0.8,
                height: ScreenUtil.screenHeightDp * 0.4,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Text(
                      'PROFILE: 01\n\n'
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
                width: ScreenUtil.screenWidthDp * 0.2,
                height: ScreenUtil.screenHeightDp * 0.4,
                child: IconButton(
                  alignment: Alignment(0.0, 0.0),
                  icon: Icon(Icons.pause_circle_outline),
                  color: Colors.white,
                  iconSize: ScreenUtil.screenWidthDp * 0.1,
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
                width: ScreenUtil.screenWidthDp * 0.333,
                height: ScreenUtil.screenHeightDp * 0.6,
                child: Column(
                  children: [
                    Spacer(),
                    SwitchExample(),
                    Spacer(),
                    Text(
                      'Excited\n',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                alignment: Alignment(0.0, 0.0),
              ),
              Container(
                decoration: makeControlDecoration(
                  location: ProfileContainerLocation.inner,
                ),
                width: ScreenUtil.screenWidthDp * 0.334,
                height: ScreenUtil.screenHeightDp * 0.6,
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
                          innerCircleColor: Color(0xFF222222),
                          size: (ScreenUtil.screenWidthDp * 0.26 <
                                  ScreenUtil.screenHeightDp *
                                      0.5) //Check if quarter width is less than half height
                              ? ScreenUtil.screenWidthDp *
                                  0.26 //If it is, set the size to quarter width
                              : ScreenUtil.screenHeightDp *
                                  0.5, //Else, set the size to half height
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
                width: ScreenUtil.screenWidthDp * 0.333,
                height: ScreenUtil.screenHeightDp * 0.6,
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
