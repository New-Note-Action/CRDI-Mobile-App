import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchInputState extends State<SwitchInput> {
  bool _beginValue = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            width: .1 * ScreenUtil.screenWidthDp,
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
        ),
      ],
    );
  }
}

class SwitchInput extends StatefulWidget {
  @override
  SwitchInputState createState() {
    return SwitchInputState();
  }
}

class HorizontalSwitchInput extends StatelessWidget {
  final String label;
  HorizontalSwitchInput({this.label = ''});
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
          RotatedBox(
            quarterTurns: 0,
            child: Container(
              width: ScreenUtil.screenWidthDp / 4,
              height: ScreenUtil.screenHeightDp / 2,
              child: SwitchInput(),
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

class VerticalSwitchInput extends StatelessWidget {
  final String label;
  VerticalSwitchInput({this.label = ''});
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
          RotatedBox(
            quarterTurns: 3,
            child: Container(
              width: ScreenUtil.screenHeightDp / 2,
              height: ScreenUtil.screenWidthDp / 4,
              child: SwitchInput(),
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
