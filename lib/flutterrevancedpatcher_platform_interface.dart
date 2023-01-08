import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutterrevancedpatcher_method_channel.dart';

abstract class FlutterrevancedpatcherPlatform extends PlatformInterface {
  /// Constructs a FlutterrevancedpatcherPlatform.
  FlutterrevancedpatcherPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterrevancedpatcherPlatform _instance = MethodChannelFlutterrevancedpatcher();

  /// The default instance of [FlutterrevancedpatcherPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterrevancedpatcher].
  static FlutterrevancedpatcherPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterrevancedpatcherPlatform] when
  /// they register themselves.
  static set instance(FlutterrevancedpatcherPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
