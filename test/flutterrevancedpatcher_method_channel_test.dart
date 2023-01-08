import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterrevancedpatcher/flutterrevancedpatcher_method_channel.dart';

void main() {
  MethodChannelFlutterrevancedpatcher platform = MethodChannelFlutterrevancedpatcher();
  const MethodChannel channel = MethodChannel('flutterrevancedpatcher');

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
