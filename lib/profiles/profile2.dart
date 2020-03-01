import 'package:flutter/material.dart';
import 'package:crdi_mobile_app/route_settings.dart';
import 'package:crdi_mobile_app/inputs/button.dart';
import 'package:crdi_mobile_app/inputs/slider.dart';
import 'package:crdi_mobile_app/profiles/profile_parts.dart';

class Profile2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: profilePartNonControlDecoration,
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
                    decoration: profilePartNonControlDecoration,
                    child: IconButton(
                      alignment: Alignment(0.0, 0.0),
                      icon: Icon(Icons.pause_circle_outline),
                      color: Colors.white,
                      iconSize: MediaQuery.of(context).size.width * 0.1,
                      onPressed: () {
                        _showDialog(context);
                        print("Pause Button Hit");
                      },
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.333,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      children: [
                        AddButton(),
                        Spacer(),
                        Text(
                          'Bored\n',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                      ],
                    ),
                    decoration: profilePartControlDecoration,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.333,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      children: [
                        AddButton(),
                        Spacer(),
                        Text(
                          'Nervous\n',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                      ],
                    ),
                    decoration: profilePartControlDecoration,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.333,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      children: [
                        Spacer(),
                        AddButton(),
                        Spacer(),
                        Text(
                          'Excited\n',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    decoration: profilePartControlDecoration,
                  ),
                ],
              ),
            ],
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
