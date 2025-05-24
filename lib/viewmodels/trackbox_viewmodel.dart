import 'base_viewmodel.dart';

class TrackboxViewModel extends BaseViewModel {
  String _trackboxContent = 'Trackbox content will be loaded here';

  String get trackboxContent => _trackboxContent;

  void loadTrackbox() {
    setLoading();
    Future.delayed(Duration(seconds: 1), () {
      _trackboxContent = 'Your music tracks and playlists';
      setSuccess();
    });
  }
}
