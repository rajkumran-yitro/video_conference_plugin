import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'gti_video_conference_platform_interface.dart';

/// An implementation of [GtiVideoConferencePlatform] that uses method channels.
class MethodChannelGtiVideoConference extends GtiVideoConferencePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('gti_video_conference');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
