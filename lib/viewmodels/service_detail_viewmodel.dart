import '../models/service_tile_model.dart';
import 'base_viewmodel.dart';

class ServiceDetailViewModel extends BaseViewModel {
  ServiceTileModel? _service;
  List<String> _features = [];
  List<String> _reviews = [];

  ServiceTileModel? get service => _service;
  List<String> get features => _features;
  List<String> get reviews => _reviews;

  void initializeService(ServiceTileModel service) {
    _service = service;
    _loadServiceDetails();
  }

  void _loadServiceDetails() {
    setLoading();

    Future.delayed(Duration(milliseconds: 800), () {
      _features = [
        'Professional quality recording',
        'Quick turnaround time',
        'Unlimited revisions',
        'High-quality audio files',
        '24/7 customer support'
      ];

      _reviews = [
        '"Amazing work! Highly recommended!" - John D.',
        '"Professional and fast delivery." - Sarah M.',
        '"Exceeded my expectations!" - Mike R.',
        '"Great communication throughout." - Lisa K.'
      ];

      setSuccess();
    });
  }

  void refreshDetails() {
    if (_service != null) {
      _loadServiceDetails();
    }
  }
}
