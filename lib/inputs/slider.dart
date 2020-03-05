import 'package:flutter/material.dart';

class SliderExampleState extends State {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return
      new Expanded(
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
              }
          )
      );
  }
}

class SliderExample extends StatefulWidget {
  @override
  SliderExampleState createState() {
    return SliderExampleState();
  }
}
