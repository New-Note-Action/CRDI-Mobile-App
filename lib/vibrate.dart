import 'package:vibration/vibration.dart';

bool vibrateEnabled = true;

class VibrateDevice {
  VibrateDevice() {
    if (vibrateEnabled) {
      Vibration.vibrate(duration: 50);
    }
  }
}
