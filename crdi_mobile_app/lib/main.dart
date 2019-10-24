import 'package:crdi_mobile_app/router.dart' as router;
import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/core/config.dart';
import 'package:flutter/material.dart';

void main() => runApp(CRDIApp());

class CRDIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CRDI Mobile App",
      theme: mainTheme(),
      onGenerateRoute: router.generateRoute,
      initialRoute: MainMenu,
    );
  }
}