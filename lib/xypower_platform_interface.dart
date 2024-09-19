import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'xypower_method_channel.dart';

abstract class XypowerPlatform extends PlatformInterface {
  /// Constructs a XypowerPlatform.
  XypowerPlatform() : super(token: _token);

  static final Object _token = Object();

  static XypowerPlatform _instance = MethodChannelXypower();

  /// The default instance of [XypowerPlatform] to use.
  ///
  /// Defaults to [MethodChannelXypower].
  static XypowerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [XypowerPlatform] when
  /// they register themselves.
  static set instance(XypowerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
