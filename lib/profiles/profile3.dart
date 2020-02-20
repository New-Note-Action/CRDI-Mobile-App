import 'package:flutter/material.dart';

import 'package:crdi_mobile_app/route_names.dart';

import 'package:crdi_mobile_app/inputs/slider.dart';

class profile3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Container(
                    child: Text("Hello"),
                    color: Colors.red,
                    height: double.infinity),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    child: Text("There"),
                    color: Colors.yellow,
                    height: double.infinity),
              )
            ]),
          ),
          Flexible(
            flex: 6,
            fit: FlexFit.tight,
            child: Row(children: [
              Expanded(
                child: Container(
                    child: Text("There"),
                    color: Colors.blue,
                    height: double.infinity),
              ),
              Expanded(
                child: Container(
                    child: Text("Are"),
                    color: Colors.green,
                    height: double.infinity),
              ),
              Expanded(
                child: Container(
                    child: Text("Controls"),
                    color: Colors.purple,
                    height: double.infinity),
              )
            ]),
          ),
        ],
      ),
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
