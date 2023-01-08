
import 'flutterrevancedpatcher_platform_interface.dart';

class Flutterrevancedpatcher {
  Future<String?> getPlatformVersion() {
    return FlutterrevancedpatcherPlatform.instance.getPlatformVersion();
  }
}
