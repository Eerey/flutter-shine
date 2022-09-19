import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'glas_shine_method_channel.dart';

abstract class GlasShinePlatform extends PlatformInterface {
  /// Constructs a GlasShinePlatform.
  GlasShinePlatform() : super(token: _token);

  static final Object _token = Object();

  static GlasShinePlatform _instance = MethodChannelGlasShine();

  /// The default instance of [GlasShinePlatform] to use.
  ///
  /// Defaults to [MethodChannelGlasShine].
  static GlasShinePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GlasShinePlatform] when
  /// they register themselves.
  static set instance(GlasShinePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
