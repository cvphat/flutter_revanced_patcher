import 'package:flutter_test/flutter_test.dart';
import 'package:flutterrevancedpatcher/flutterrevancedpatcher.dart';
import 'package:flutterrevancedpatcher/flutterrevancedpatcher_platform_interface.dart';
import 'package:flutterrevancedpatcher/flutterrevancedpatcher_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterrevancedpatcherPlatform
    with MockPlatformInterfaceMixin
    implements FlutterrevancedpatcherPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterrevancedpatcherPlatform initialPlatform = FlutterrevancedpatcherPlatform.instance;

  test('$MethodChannelFlutterrevancedpatcher is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterrevancedpatcher>());
  });

  test('getPlatformVersion', () async {
    Flutterrevancedpatcher flutterrevancedpatcherPlugin = Flutterrevancedpatcher();
    MockFlutterrevancedpatcherPlatform fakePlatform = MockFlutterrevancedpatcherPlatform();
    FlutterrevancedpatcherPlatform.instance = fakePlatform;

    expect(await flutterrevancedpatcherPlugin.getPlatformVersion(), '42');
  });
}
