import 'package:flutter_test/flutter_test.dart';
import 'package:gti_video_conference/gti_video_conference.dart';
import 'package:gti_video_conference/gti_video_conference_platform_interface.dart';
import 'package:gti_video_conference/gti_video_conference_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGtiVideoConferencePlatform
    with MockPlatformInterfaceMixin
    implements GtiVideoConferencePlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GtiVideoConferencePlatform initialPlatform = GtiVideoConferencePlatform.instance;

  test('$MethodChannelGtiVideoConference is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGtiVideoConference>());
  });

  test('getPlatformVersion', () async {
    GtiVideoConference gtiVideoConferencePlugin = GtiVideoConference();
    MockGtiVideoConferencePlatform fakePlatform = MockGtiVideoConferencePlatform();
    GtiVideoConferencePlatform.instance = fakePlatform;

    expect(await gtiVideoConferencePlugin.getPlatformVersion(), '42');
  });
}
