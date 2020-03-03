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
                    decoration: makeNonControlDecoration(
                      location: ProfileContainerLocation.leftmost,
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
                    decoration: makeNonControlDecoration(
                      location: ProfileContainerLocation.rightmost,
                    ),
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: IconButton(
                      alignment: Alignment(0.0, 0.0),
                      icon: Icon(Icons.pause_circle_outline),
                      color: Colors.white,
                      iconSize: MediaQuery.of(context).size.width * 0.1,
                      onPressed: () {
                        profilePauseDialog(context);
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
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.leftmost,
                    ),
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
                  ),
                  Container(
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.inner,
                    ),
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
                  ),
                  Container(
                    decoration: makeControlDecoration(
                      location: ProfileContainerLocation.rightmost,
                    ),
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
