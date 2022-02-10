import 'dart:async';

import 'package:add_to_calendar/src/model/event.dart';
import 'package:flutter/services.dart';

class AddToCalendar {
  static const MethodChannel _channel = const MethodChannel('add_to_calendar');

  /// Add an Event (object) to user's default calendar.
  static Future<bool> addEvent2Cal(Event event) async {
    return _channel
        .invokeMethod<bool?>('addToCal', event.toJson())
        .then((value) => value ?? false);
  }
}
