import 'package:flutter_test/flutter_test.dart';
import 'package:xypower/xypower.dart';
import 'package:xypower/xypower_platform_interface.dart';
import 'package:xypower/xypower_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockXypowerPlatform
    with MockPlatformInterfaceMixin
    implements XypowerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final XypowerPlatform initialPlatform = XypowerPlatform.instance;

  test('$MethodChannelXypower is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelXypower>());
  });

  test('getPlatformVersion', () async {
    Xypower xypowerPlugin = Xypower();
    MockXypowerPlatform fakePlatform = MockXypowerPlatform();
    XypowerPlatform.instance = fakePlatform;

    expect(await xypowerPlugin.getPlatformVersion(), '42');
  });
}
