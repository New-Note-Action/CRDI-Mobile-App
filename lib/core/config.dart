import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void portraitMode() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

void landscapeMode() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

void enableRotation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

void enterFullscreen() {
  SystemChrome.setEnabledSystemUIOverlays([]);
}

void exitFullscreen() {
  SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
}

// TODO Complete Theme
ThemeData mainTheme() {
  return ThemeData(
    brightness: Brightness.dark,
  );
}