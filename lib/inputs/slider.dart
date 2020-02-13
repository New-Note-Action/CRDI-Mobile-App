import 'package:flutter/material.dart';

class SliderExampleState extends State {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return
      new Expanded(
          child: Slider(
              value: _value.toDouble(),
              min: 1.0,
              max: 10.0,
              divisions: 10,
              activeColor: Colors.red,
              inactiveColor: Colors.black,
              label: _value.toString(),
              onChanged: (double newValue) {
                setState(() {
                  _value = newValue.round();
                });
              },
              semanticFormatterCallback: (double newValue) {
                return '${newValue.round()} dollars';
              }
          )
      );
  }
}