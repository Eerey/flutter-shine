
import 'glas_shine_platform_interface.dart';

class GlasShine {
  Future<String?> getPlatformVersion() {
    return GlasShinePlatform.instance.getPlatformVersion();
  }
}
