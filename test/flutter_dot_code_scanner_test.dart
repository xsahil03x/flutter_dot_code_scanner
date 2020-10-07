import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dot_code_scanner/flutter_dot_code_scanner.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_dot_code_scanner');

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
    expect(await FlutterDotCodeScanner.platformVersion, '42');
  });
}
