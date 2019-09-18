import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:universal_html/html.dart' as html;

class ExamplePlugin {
  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
        'example_plugin', const StandardMethodCodec(), registrar.messenger);
    final ExamplePlugin instance = ExamplePlugin();
    channel.setMethodCallHandler(instance.handleMethodCall);
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'getPlatformVersion':
        // final url = _getParam<String>(call, 'url');
        return html.window.navigator.platform;
      default:
        throw PlatformException(
            code: 'Unimplemented',
            details: "The example_plugin plugin for web doesn't implement "
                "the method '${call.method}'");
    }
  }

  T _getParam<T>(MethodCall call, String key) {
    if (call?.arguments == null) return null;
    return call.arguments[key] as T;
  }
}
