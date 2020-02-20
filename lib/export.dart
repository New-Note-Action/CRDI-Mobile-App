/* export.dart - Send the user's testing data to the proctor */

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

//Needs to be updated with the correct file management

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:crdi_mobile_app/route_names.dart';
import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/drawer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:simple_share/simple_share.dart';
import 'package:flutter/services.dart';
import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/core/bottombar.dart';
import 'package:crdi_mobile_app/drawer.dart';

class SubmitResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TopAppBar('Submit Results', true),
        drawer: DrawerSection(),
        body: ShareMenu(),
        bottomNavigationBar: BottomNavBar(false),
      ),
    );
  }
}

class ShareMenu extends StatefulWidget {
  @override
  _ShareMenuState createState() => new _ShareMenuState();
}

class _ShareMenuState extends State<ShareMenu> {
  Future<String> getFilePath() async {
    try {
      String filePath = await FilePicker.getFilePath(
        type: FileType.CUSTOM,
        fileExtension: 'pdf',
      );
      if (filePath == '') {
        return "";
      }
      print("File path: " + filePath);
      return filePath;
    } on PlatformException catch (e) {
      print("Error while picking the file: " + e.toString());
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              SimpleShare.share(
                title: "Share my message",
                msg:
                    "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod " +
                        "tempor incidunt ut labore et dolore magna aliqua.",
              );
            },
            child: Text('Share text!'),
          ),
          RaisedButton(
            onPressed: () async {
              final path = await getFilePath();
              if (path != null && path.isNotEmpty) {
                final uri = Uri.file(path);
                SimpleShare.share(
                  uri: uri.toString(),
                  title: "DR. C Results",
                  msg: "Sent via DR. C app",
                  subject: 'Test Results',
                );
              }
              print('file shared!!!');
            },
            child: Text('Share file!'),
          ),
        ],
      ),
    );
  }
}
