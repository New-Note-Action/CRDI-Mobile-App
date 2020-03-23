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

//TODO Edit to be specific to this project

import 'package:crdi_mobile_app/route_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/drawer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:simple_share/simple_share.dart';
import 'package:flutter/services.dart';
import 'package:crdi_mobile_app/core/bottombar.dart';

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
        type: FileType.custom,
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
                final uri = Uri.file(fileName);
                print(fileName);
                print(uri.toString());
                SimpleShare.share(
                  uri: uri.toString(),
                  title: "DR.C Test Results",
                  msg:
                  "Attached are the results for test [ID]\n\nSent via DR.C app",
                  subject: "Test [ID] Results",
                );
              print('file shared!!!');
            },
            child: Text('Submit this test'),
          ),
          RaisedButton(
            onPressed: () async {
              final path = await getFilePath();
              if (path != null && path.isNotEmpty) {
                final uri = Uri.file(path);
                print('Preparing to Share');
                print(path);
                print(uri.toString());
                await SimpleShare.share(
                  uri: uri.toString(),
                  title: "DR.C Test Results",
                  msg:
                      "Attached are the results for test [ID]\n\nSent via DR.C app",
                  subject: "Test [ID] Results",
                );
              }
              print('file shared!!!');
            },
            child: Text('Submit a Test'),
          ),
        ],
      ),
    );
  }
}
