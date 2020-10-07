
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterDotCodeScanner {
  static const MethodChannel _channel =
      const MethodChannel('flutter_dot_code_scanner');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
