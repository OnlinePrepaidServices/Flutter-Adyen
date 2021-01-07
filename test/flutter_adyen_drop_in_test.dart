import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_adyen_drop_in/flutter_adyen_drop_in.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_adyen_drop_in');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterAdyen.openDropIn, '42');
  });
}
