import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'gti_video_conference_method_channel.dart';

abstract class GtiVideoConferencePlatform extends PlatformInterface {
  /// Constructs a GtiVideoConferencePlatform.
  GtiVideoConferencePlatform() : super(token: _token);

  static final Object _token = Object();

  static GtiVideoConferencePlatform _instance = MethodChannelGtiVideoConference();

  /// The default instance of [GtiVideoConferencePlatform] to use.
  ///
  /// Defaults to [MethodChannelGtiVideoConference].
  static GtiVideoConferencePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GtiVideoConferencePlatform] when
  /// they register themselves.
  static set instance(GtiVideoConferencePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
