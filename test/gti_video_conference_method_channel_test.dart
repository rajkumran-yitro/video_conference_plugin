import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gti_video_conference/gti_video_conference_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelGtiVideoConference platform = MethodChannelGtiVideoConference();
  const MethodChannel channel = MethodChannel('gti_video_conference');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
          return '42';
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
