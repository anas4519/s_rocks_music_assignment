import 'base_viewmodel.dart';

class NewsViewModel extends BaseViewModel {
  String _newsContent = 'News content will be loaded here';

  String get newsContent => _newsContent;

  void loadNews() {
    setLoading();
    Future.delayed(Duration(seconds: 1), () {
      _newsContent = 'Latest music news and updates';
      setSuccess();
    });
  }
}
