
import 'xypower_platform_interface.dart';

class Xypower {
  Future<String?> getPlatformVersion() {
    return XypowerPlatform.instance.getPlatformVersion();
  }
}
