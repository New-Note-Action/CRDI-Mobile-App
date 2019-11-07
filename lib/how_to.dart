import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:crdi_mobile_app/core/topbar.dart';
import 'package:crdi_mobile_app/core/config.dart';
import 'package:crdi_mobile_app/core/bottombar.dart';

class HowToClass extends StatelessWidget {
  Future<String> _getStringOfHowToFile(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString("assets/howtouse.md");
  }

  @override
  Widget build(BuildContext buildContext) {
    return FutureBuilder(
        future: _getStringOfHowToFile(buildContext),
        builder: (BuildContext context, AsyncSnapshot<String> text) {
          return SafeArea(
            child: Scaffold(
              appBar: TopAppBar("How To", true),
              drawer: Drawer(),
              bottomNavigationBar: BottomNavBar(false),
              body: Markdown(data: text.data),
            ),
          );
        }
    );
  }
}
