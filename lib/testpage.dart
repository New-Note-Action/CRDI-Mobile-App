import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:control_pad/control_pad.dart';
//import 'package:crdi_mobile_app/route_names.dart';
//import 'package:crdi_mobile_app/core/config.dart';

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() {
    return _SliderExampleState();
  }
}


class TestingPage extends StatelessWidget {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    return SafeArea(
      child: Scaffold(

        body: Column(
            children: <Widget>[
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
                    child: Text('Respond to the music by doing xyz, abc, and asdf.  Make sure that you check out the ABCDEFG when you XYZ.', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
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
                      child:
                      IconButton(
                        alignment: Alignment(0.0, 0.0),
                        icon: Icon(Icons.pause_circle_outline),
                        color: Colors.white,


                        iconSize: MediaQuery.of(context).size.width * 0.1,
                        onPressed: () {
                          print("Pause Button Hit");
                        },

                      )
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.333,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child:
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Spacer(),
                          IconButton(
                            alignment: Alignment(0.0, 0.0),
                            icon: Icon(Icons.fingerprint),
                            iconSize: MediaQuery.of(context).size.width * 0.2,
                            //color: Colors.white,
                            onPressed: () {
                              print("I was Pressed");
                            },
                          ),
                          Spacer(),
                          Text('Excited\n', style: TextStyle(color: Colors.white)),
                        ]),


                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      border: Border(
                        //top: BorderSide(width: 1.0, color: Colors.black),
                        left: BorderSide(width: 1.0, color: Colors.white30),
                        right: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                    ),

                  ),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.334,
                    height: MediaQuery.of(context).size.height * 0.6,

                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      border: Border(
                        //top: BorderSide(width: 1.0, color: Colors.black),
                        left: BorderSide(width: 1.0, color: Colors.black),
                        right: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                    ),



                    child:
                    Container(
                      margin: const EdgeInsets.only(top: 3.0, left: 10.0, right: 10.0),
                      child:
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Spacer(),
                          Container(

                          child: JoystickView(iconsColor: Colors.white30, backgroundColor: Colors.black54, innerCircleColor: Colors.black26, size: MediaQuery.of(context).size.width * 0.26,),
                          ),
                          Spacer(),
                          Text('Happiness\n', style: TextStyle(color: Colors.white)),
                        ]),

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
            ]
        ),
      ),
    );
  }
}

class _SliderExampleState extends State {
  int _value = 6;

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


