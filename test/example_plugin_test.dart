import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:example_plugin/example_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('example_plugin');

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
    expect(await ExamplePlugin.platformVersion, '42');
  });
}
