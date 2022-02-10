import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:add_to_calendar/add_to_calendar.dart';

void main() {
  const MethodChannel channel = MethodChannel('add_to_calendar');

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
    expect(await AddToCalendar.platformVersion, '42');
  });
}
