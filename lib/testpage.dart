import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crdi_mobile_app/profiles/profile1.dart';
import 'package:crdi_mobile_app/profiles/profile2.dart';
import 'package:crdi_mobile_app/profiles/profile3.dart';
import 'package:crdi_mobile_app/profiles/profile4.dart';
import 'package:crdi_mobile_app/profiles/profile5.dart';


//import 'package:crdi_mobile_app/core/config.dart';




class TestingPage extends StatelessWidget {
  //int _value = 1;

  int profile = 4;


  int joystickX = 0;
  int joystickY = 0;

  int sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    if (profile == 1) {
      return SafeArea(
        child: profile1(),
      );
    }

    if (profile == 2) {
      return SafeArea(
        child: profile2(),
      );
    }

    if (profile == 3) {
      return SafeArea(
        child: profile3(),
      );
    }

    if (profile == 4) {
      return SafeArea(
        child: profile4(),
      );
    }

    if (profile == 5) {
      return SafeArea(
        child: profile5(),
      );
    }
  }


}