import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchExampleState extends State {
  bool _beginValue = true;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: SizedBox(
        width: .10 * ScreenUtil.screenWidthDp,
        child: Switch(
          value: _beginValue,
          onChanged: (bool newValue) {
            setState(
              () {
                _beginValue = newValue;
              },
            );
          },
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  @override
  SwitchExampleState createState() {
    return SwitchExampleState();
  }
}
