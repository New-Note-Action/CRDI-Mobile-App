import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/drawer.dart';

class MainMenuClass extends StatelessWidget {
  static BuildContext _theContext;
  final List<ListTile> _mainMenuItems = <ListTile>[
    ListTile(
      title: Text("New Test"),
      onTap: () => Navigator.pushNamed(_theContext, ProfileSelect),
    ),
    ListTile(
      title: Text("Export Results"),
      onTap: () => Navigator.pushNamed(_theContext, Export),
    ),
  ];

  @override
  Widget build(BuildContext buildContext) {
    _theContext = buildContext;
    return SafeArea(
      child: Scaffold(
        appBar: TopAppBar("CRDI Mobile App", true),
        drawer: DrawerSection(),
        body: Column(
          children: <Widget>[
            Container(
              child: Image(
                  image: AssetImage(
                      "assets/Electronic-Component-Potentiometer.png"
                  ),
                  height: 200.0
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: _mainMenuItems.length,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return _mainMenuItems[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}