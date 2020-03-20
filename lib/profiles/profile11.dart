import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:crdi_mobile_app/inputs/button.dart';
import 'package:crdi_mobile_app/inputs/empty_input.dart';
import 'package:crdi_mobile_app/inputs/joystick.dart';
import 'package:crdi_mobile_app/profiles/profile_parts.dart';

class Profile11 extends StatelessWidget {
  final String name;

  Profile11({this.name = 'Profile 11'});
  @override
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
                      name + '\n\n'
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
              JoystickInput(label: 'this is a label'),
              EmptyInput(),
              ButtonInput(label: 'this is a label'),
            ],
          ),
        ],
      ),
    );
  }
}
