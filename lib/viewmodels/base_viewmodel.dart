import 'package:flutter/foundation.dart';

enum ViewState { idle, loading, error, success }

class BaseViewModel extends ChangeNotifier {
  ViewState _state = ViewState.idle;
  String _errorMessage = '';

  ViewState get state => _state;
  String get errorMessage => _errorMessage;

  bool get isLoading => _state == ViewState.loading;
  bool get hasError => _state == ViewState.error;
  bool get isSuccess => _state == ViewState.success;
  bool get isIdle => _state == ViewState.idle;

  void setState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }

  void setError(String message) {
    _errorMessage = message;
    _state = ViewState.error;
    notifyListeners();
  }

  void setLoading() {
    _state = ViewState.loading;
    notifyListeners();
  }

  void setSuccess() {
    _state = ViewState.success;
    notifyListeners();
  }

  void setIdle() {
    _state = ViewState.idle;
    notifyListeners();
  }
}