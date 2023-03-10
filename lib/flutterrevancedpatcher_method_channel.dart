import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutterrevancedpatcher_platform_interface.dart';

/// An implementation of [FlutterrevancedpatcherPlatform] that uses method channels.
class MethodChannelFlutterrevancedpatcher extends FlutterrevancedpatcherPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutterrevancedpatcher');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
