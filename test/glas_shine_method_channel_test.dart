import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glas_shine/glas_shine_method_channel.dart';

void main() {
  MethodChannelGlasShine platform = MethodChannelGlasShine();
  const MethodChannel channel = MethodChannel('glas_shine');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
