import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'glas_shine_platform_interface.dart';

/// An implementation of [GlasShinePlatform] that uses method channels.
class MethodChannelGlasShine extends GlasShinePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('glas_shine');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
