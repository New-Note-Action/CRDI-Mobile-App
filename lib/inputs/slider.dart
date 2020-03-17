import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderInputState extends State<SliderInput> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: Slider(
                value: _value.toDouble(),
                min: 0.0,
                max: 100.0,
                divisions: 100,
                activeColor: Colors.red,
                inactiveColor: Colors.black,
                //label: _value.toString(),
                onChanged: (double newValue) {
                  setState(() {
                    _value = newValue.round();
                    print(_value);
                  });
                },
                semanticFormatterCallback: (double newValue) {
                  return '${newValue.round()} dollars';
                })),
      ],
    );
  }
}

class SliderInput extends StatefulWidget {
  @override
  SliderInputState createState() {
    return SliderInputState();
  }
}

class VerticalSliderInput extends StatelessWidget {
  final String label;
  VerticalSliderInput({this.label = ''});
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
              child: SliderInput(),
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

class HorizontalSliderInput extends StatelessWidget {
  final String label;
  HorizontalSliderInput({this.label = ''});
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
              child: SliderInput(),
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
