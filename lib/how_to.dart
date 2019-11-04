import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class HowToClass extends StatelessWidget {
  Future<String> getStringOfHowToFile(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString("assets/howtouse.md");
  }

  @override
  Widget build(BuildContext buildContext) {
    return FutureBuilder(
        future: getStringOfHowToFile(buildContext),
        builder: (BuildContext context, AsyncSnapshot<String> text) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: const Text("How To"),
              ),
              body: Markdown(data: text.data),
            ),
          );
        });
  }
}
