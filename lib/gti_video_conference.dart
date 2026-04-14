
import 'gti_video_conference_platform_interface.dart';

class GtiVideoConference {
  Future<String?> getPlatformVersion() {
    return GtiVideoConferencePlatform.instance.getPlatformVersion();
  }
}
