import 'package:flutter/material.dart';

import 'package:crdi_mobile_app/route_names.dart';

import 'package:crdi_mobile_app/inputs/slider.dart';

class Profile3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.black87,
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.white30),
                  left: BorderSide(width: 1.0, color: Colors.white30),
//right: BorderSide(width: 1.0, color: Colors.white30),
                  bottom: BorderSide(width: 1.0, color: Colors.white30),
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                child: Text(
                    'Respond to the music by doing xyz, abc, and asdf.  Make sure that you check out the ABCDEFG when you XYZ.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center),
                alignment: Alignment(0.0, 0.0),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  color: Colors.black87,
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.white30),
                    left: BorderSide(width: 1.0, color: Colors.white30),
                    right: BorderSide(width: 1.0, color: Colors.white30),
                    bottom: BorderSide(width: 1.0, color: Colors.white30),
                  ),
                ),
                child: IconButton(
                  alignment: Alignment(0.0, 0.0),
                  icon: Icon(Icons.pause_circle_outline),
                  color: Colors.white,
                  iconSize: MediaQuery.of(context).size.width * 0.1,
                  onPressed: () {
                    _showDialog(context);
                    print("Pause Button Hit");
                  },
                )),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.333,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Spacer(),
//slider goes here
                    SliderExample(),
                    Spacer(),
                    Text('Boredom\n', style: TextStyle(color: Colors.white)),
                  ]),
              alignment: Alignment(0.0, 0.0),
              decoration: const BoxDecoration(
                color: Colors.grey,
                border: Border(
//top: BorderSide(width: 1.0, color: Colors.black),
                  left: BorderSide(width: 1.0, color: Colors.black),
                  right: BorderSide(width: 1.0, color: Colors.white30),
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.333,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Spacer(),
//slider goes here
                    SliderExample(),
                    Spacer(),
                    Text('Excitement\n', style: TextStyle(color: Colors.white)),
                  ]),
              alignment: Alignment(0.0, 0.0),
              decoration: const BoxDecoration(
                color: Colors.grey,
                border: Border(
//top: BorderSide(width: 1.0, color: Colors.black),
                  left: BorderSide(width: 1.0, color: Colors.black),
                  right: BorderSide(width: 1.0, color: Colors.white30),
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.333,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Spacer(),
//slider goes here
                    SliderExample(),
                    Spacer(),
                    Text('Tension\n', style: TextStyle(color: Colors.white)),
                  ]),
              alignment: Alignment(0.0, 0.0),
              decoration: const BoxDecoration(
                color: Colors.grey,
                border: Border(
//top: BorderSide(width: 1.0, color: Colors.black),
                  left: BorderSide(width: 1.0, color: Colors.black),
                  right: BorderSide(width: 1.0, color: Colors.white30),
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

void _showDialog(context) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("Test Paused"),
        //content: new Text("Resume Or End"),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("Resume"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          new FlatButton(
            child: new Text("End"),
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(MainMenu, (_) => false);
            },
          ),
        ],
      );
    },
  );
}

class SliderExample extends StatefulWidget {
  @override
  SliderExampleState createState() {
    return SliderExampleState();
  }
}
