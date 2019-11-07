import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'dart:async' show Future;

class AboutClass extends StatelessWidget {
  static String _licenseNotice = "";

  static Future<String> _getLicenseNotice(BuildContext buildContext) async {
    return await DefaultAssetBundle.of(buildContext)
        .loadString("LICENSE_LicenseNotice");
  }

  static Future<LicensePage> _getLicensePage(BuildContext buildContext) async {
    _licenseNotice = await _getLicenseNotice(buildContext);

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return LicensePage(
      applicationName: packageInfo.appName,
      applicationVersion: "Version " + packageInfo.version,
      applicationLegalese: _licenseNotice,
      //pageTitle: "About", // From tinkering with Flutters's about.dart
      applicationIcon: Image(
        image: AssetImage("assets/Electronic-Component-Potentiometer.png"),
        height: 72.0,
        width: 72.0,
      ),
    );
  }

  @override
  Widget build(BuildContext buildContext) {
    return FutureBuilder(
      future: _getLicensePage(buildContext),
      builder: (BuildContext context, AsyncSnapshot<LicensePage> data) {
        return SafeArea(
          child: Scaffold(
            body: data.data,
          ),
        );
      },
    );
  }

}