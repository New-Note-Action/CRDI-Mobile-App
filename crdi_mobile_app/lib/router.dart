import 'package:flutter/material.dart';
import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/core/config.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  //TODO Add paths to actual Features
  switch (settings.name) {
    case MainMenu:
      portraitMode();
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          featureName: settings.name,
        ),
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
        builder: (context) => UndefinedView(
          featureName: settings.name,
        ),
      );
    case Legal:
      portraitMode();
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          featureName: settings.name,
        ),
      );
    case ProfileSelect:
      portraitMode();
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          featureName: settings.name,
        ),
      );
    case Ready:
      landscapeMode();
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          featureName: settings.name,
        ),
      );
    case Testing:
      landscapeMode();
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          featureName: settings.name,
        ),
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
        appBar: AppBar(
          title: Text('Page Not Found'),
        ),
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
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}