import 'package:flutter_test/flutter_test.dart';
import 'package:glas_shine/glas_shine.dart';
import 'package:glas_shine/glas_shine_platform_interface.dart';
import 'package:glas_shine/glas_shine_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGlasShinePlatform 
    with MockPlatformInterfaceMixin
    implements GlasShinePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GlasShinePlatform initialPlatform = GlasShinePlatform.instance;

  test('$MethodChannelGlasShine is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGlasShine>());
  });

  test('getPlatformVersion', () async {
    GlasShine glasShinePlugin = GlasShine();
    MockGlasShinePlatform fakePlatform = MockGlasShinePlatform();
    GlasShinePlatform.instance = fakePlatform;
  
    expect(await glasShinePlugin.getPlatformVersion(), '42');
  });
}
