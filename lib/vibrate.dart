import 'package:vibration/vibration.dart';

bool vibrateEnabled = false;

class VibrateDevice {
  VibrateDevice() {
    Vibration.vibrate(duration: 50);
  }
}
