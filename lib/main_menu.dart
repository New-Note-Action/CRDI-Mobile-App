import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'legal_info.dart';

class MainMenuClass extends StatelessWidget {
  static BuildContext _theContext;
  final List<ListTile> _mainMenuItems = <ListTile>[
    ListTile(
      title: Text("New Test"),
    ),
    ListTile(
      title: Text("Export Results"),
    ),

    //"View Licenses" button present on About dialog.
    ListTile(
      title: Text("Legal"),
      onTap: () => LegalInfoClass.renderLicensePage(context: _theContext),
    ),

    ListTile(
      title: Text("About"),
      onTap: () => LegalInfoClass.renderAboutDialog(context: _theContext),
    ),
  ];

  @override
  Widget build(BuildContext buildContext) {
    _theContext = buildContext;
    return SafeArea(
      child: Scaffold(
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
