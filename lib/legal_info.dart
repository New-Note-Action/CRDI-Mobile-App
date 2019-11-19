import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class LegalInfoClass {
  static String _licenseNotice = '';

  static Future<String> _getLicenseNotice(BuildContext buildContext) async {
    return await DefaultAssetBundle.of(buildContext)
        .loadString("LICENSE_LicenseNotice");
  }

  static Future<LicensePage> _getLicensePage(BuildContext buildContext) async {
    _licenseNotice = await _getLicenseNotice(buildContext);
  }

  static Future renderAboutDialog({BuildContext context}) async {
    if (_licenseNotice == '') {

    }
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    showAboutDialog(
      applicationName: packageInfo.appName,
      applicationVersion: packageInfo.version,
      applicationLegalese: _licenseNotice,
      applicationIcon: Image(
        image: AssetImage("assets/Electronic-Component-Potentiometer.png"),
        height: 72.0,
        width: 72.0,
      ),
      context: context,
    );
  }

  static Future renderLicensePage({BuildContext context}) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    showLicensePage(
      applicationName: packageInfo.appName,
      applicationVersion: packageInfo.version,
      applicationLegalese: _licenseNotice,
      applicationIcon: Image(
        image: AssetImage("assets/Electronic-Component-Potentiometer.png"),
        height: 72.0,
        width: 72.0,
      ),
      context: context,
    );
  }
}