import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'xypower_platform_interface.dart';

/// An implementation of [XypowerPlatform] that uses method channels.
class MethodChannelXypower extends XypowerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('xypower');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
