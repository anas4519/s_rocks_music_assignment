import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getServiceTiles() async {
    try {
      QuerySnapshot querySnapshot =
          await _firestore.collection('service_tiles').get();
      return querySnapshot.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
    } catch (e) {
      print('Error fetching service tiles: $e');
      return [];
    }
  }
}
