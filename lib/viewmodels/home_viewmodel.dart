import '../models/service_tile_model.dart';
import '../services/firestore_service.dart';
import 'base_viewmodel.dart';

class HomeViewModel extends BaseViewModel {
  final FirestoreService _firestoreService = FirestoreService();
  
  List<ServiceTileModel> _serviceTiles = [];
  
  List<ServiceTileModel> get serviceTiles => _serviceTiles;

  Future<void> loadServiceTiles() async {
    setLoading();
    
    try {
      final data = await _firestoreService.getServiceTiles();
      _serviceTiles = data.map((item) => ServiceTileModel.fromMap(item)).toList();
      setSuccess();
    } catch (e) {
      setError('Failed to load service tiles: ${e.toString()}');
    }
  }

  void refreshServiceTiles() {
    loadServiceTiles();
  }
}