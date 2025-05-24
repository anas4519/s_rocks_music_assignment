import 'base_viewmodel.dart';

class MainPageViewModel extends BaseViewModel {
  int _currentIndex = 0;
  
  int get currentIndex => _currentIndex;
  
  void setCurrentIndex(int index) {
    if (_currentIndex != index) {
      _currentIndex = index;
      notifyListeners();
    }
  }
}