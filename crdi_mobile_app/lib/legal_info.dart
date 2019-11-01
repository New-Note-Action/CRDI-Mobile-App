import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class LegalInfoClass {
  static final String _copyrightNotice = 'Copyright (C) 2019 "New Note Action" (John Elik, Cole Howard, Sean Pohl, Tyler Tichler)';
  static final String _licenseDetails = '\n\n'
    'This program is free software: you can redistribute it and/or modify' '\n'
    'it under the terms of the GNU General Public License as published by' '\n'
    'the Free Software Foundation, either version 3 of the License, or' '\n'
    '(at your option) any later version.' '\n'
      '\n'
    'This program is distributed in the hope that it will be useful,' '\n'
    'but WITHOUT ANY WARRANTY; without even the implied warranty of' '\n'
    'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the' '\n'
    'GNU General Public License for more details.' '\n'
      '\n'
    'You should have received a copy of the GNU General Public License' '\n'
    'along with this program.  If not, see <https://www.gnu.org/licenses/>.';

  static Future renderAboutDialog({BuildContext context}) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    showAboutDialog(
      applicationName: packageInfo.appName,
      applicationVersion: packageInfo.version,
      applicationLegalese: _copyrightNotice + _licenseDetails,
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
      applicationLegalese: _copyrightNotice + _licenseDetails,
      applicationIcon: Image(
        image: AssetImage("assets/Electronic-Component-Potentiometer.png"),
        height: 72.0,
        width: 72.0,
      ),
      context: context,
    );
  }
}
