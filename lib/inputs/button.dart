import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:crdi_mobile_app/vibrate.dart';
import 'package:crdi_mobile_app/testpage.dart';

class ButtonInput extends StatelessWidget {
  final String label;
  int pressed = 0;
  int numPressed = 0;
  ButtonInput({this.label = ''});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidthDp / 3,
      height: ScreenUtil.screenHeightDp * .6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Listener(
            onPointerDown: (details) async {

              VibrateDevice();
              var now = new DateTime.now();
              writeInput((label + "," + "Pressed," + now.toIso8601String() + ",,"));
              pressed = 1;
              numPressed = numPressed +
                  1; //Every Clock Cycle, this variable will reset to 0.
              print("Button Pressed. " + pressed.toString());
              print("Button Pressed: " + numPressed.toString() + " Times.");
//await Future.delayed(Duration(milliseconds: 500)); // <--- Clock

//A function to either write this data to the file OR write it to a data structure would go here
//Have the inputs be called in from their modular files, but each input will then call out to an outside function for its triggered interactions.
//This main file will handle the file IO by writing the returned values from these functions to the output CSV.  This way one clock can rule the output writing, and only one function is accessing the file ever.
            },
            onPointerUp: (details) async {
              pressed = 0;
              var now = new DateTime.now();
              writeInput((label + "," + "Released," + now.toIso8601String()));
              print("Button Unpressed. " + pressed.toString());
//A function to either write this data to the file OR write it to a data structure would go here
            },
            child: IconButton(
              onPressed: () {
                print(".");
              },
              //alignment: Alignment(0.0, 0.0),
              icon: Icon(Icons.fingerprint),
              iconSize: (ScreenUtil.screenWidthDp / 4 <
                  ScreenUtil.screenHeightDp /
                      2) //Check if quarter width is less than half height
                  ? ScreenUtil.screenWidthDp /
                  4 //If it is, set the size to quarter width
                  : ScreenUtil.screenHeightDp / 2,
            ),
          ),
          Spacer(),
          Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
