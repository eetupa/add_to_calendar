import 'dart:async';

import 'package:flutter/services.dart';

class AddToCalendar {
  static const MethodChannel _channel = MethodChannel('add_to_calendar');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
