import 'package:flutter/material.dart';
import 'package:crdi_mobile_app/vibrate.dart';

// ignore: must_be_immutable
class AddButton extends StatelessWidget {
  int buttonPressed = 0;
  int numPressed = 0; //Every Clock Cycle, this variable will reset to 0.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Listener(
              onPointerDown: (details) async {
                VibrateDevice();
                buttonPressed = 1;
                numPressed = numPressed +
                    1; //Every Clock Cycle, this variable will reset to 0.
                print("Button Pressed. " + buttonPressed.toString());
                print("Button Pressed: " + numPressed.toString() + " Times.");
//await Future.delayed(Duration(milliseconds: 500)); // <--- Clock

//A function to either write this data to the file OR write it to a data structure would go here
//Have the inputs be called in from their modular files, but each input will then call out to an outside function for its triggered interactions.
//This main file will handle the file IO by writing the returned values from these functions to the output CSV.  This way one clock can rule the output writing, and only one function is accessing the file ever.
              },
              onPointerUp: (details) async {
                buttonPressed = 0;
                print("Button Unpressed. " + buttonPressed.toString());
//A function to either write this data to the file OR write it to a data structure would go here
              },
              child: IconButton(
                onPressed: () {
                  print(".");
                },
                alignment: Alignment(0.0, 0.0),
                icon: Icon(Icons.fingerprint),
                iconSize: MediaQuery.of(context).size.width * 0.2,
//color: Colors.white,
              ),
            ),
          ]),
    );
  }
}
