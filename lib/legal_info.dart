/* legal_info.dart - (Old) way to present version and license information */

/*
    Copyright (C) 2019-2020 "New Note Action" (John Elik, Cole Howard,
    Sean Pohl, Tyler Tichler)

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

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
