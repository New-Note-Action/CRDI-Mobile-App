import 'package:flutter/material.dart';
import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/core/config.dart';
import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/core/bottombar.dart';
import 'package:crdi_mobile_app/profile_select.dart';
import 'package:crdi_mobile_app/ready.dart';
import 'package:crdi_mobile_app/export.dart';
import 'package:crdi_mobile_app/how_to.dart';
import 'package:crdi_mobile_app/legal_info.dart';
import 'package:crdi_mobile_app/about.dart';
import 'package:crdi_mobile_app/main_menu.dart';
import 'package:crdi_mobile_app/testpage.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  //TODO Add paths to actual Features
  switch (settings.name) {
    case MainMenu:
      portraitMode();
      return MaterialPageRoute(
        builder: (context) => MainMenuClass(),
      );
    case Export:
      portraitMode();
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          featureName: settings.name,
        ),
      );
    case HowTo:
      portraitMode();
      return MaterialPageRoute(
        builder: (context) => HowToClass(),
      );
    case Legal:
      portraitMode();
      return MaterialPageRoute(
        builder: (context) => AboutClass(),
      );
    case ProfileSelect:
      portraitMode();
      return MaterialPageRoute(
        builder: (context) => SelectProfile(),
      );
    case Ready:
      landscapeMode();
      return MaterialPageRoute(
        builder: (context) => readyPage(),
      );
    case Testing:
      landscapeMode();
      return MaterialPageRoute(
        builder: (context) => TestingPage(),
      );
    default:
      portraitMode();
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          featureName: settings.name,
        ),
      );
  }
}

//TODO Add Global Navbars
//TODO Make look nicer
//TODO Make separate file?
class UndefinedView extends StatelessWidget {
  final String featureName;
  const UndefinedView({Key key, this.featureName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TopAppBar('Undefined Route', false),
        body: Center(
          child: Text(
            'The \'$featureName\' feature has not yet been implemented',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.grey[500],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        bottomNavigationBar: BottomNavBar(false),
      ),
    );
  }
}
