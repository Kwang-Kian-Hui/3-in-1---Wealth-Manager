import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wealth_manager/infrastructure/dto_models/account_dto.dart';

class FirestoreRemoteService{
  final FirebaseFirestore _firebaseFirestore;

  FirestoreRemoteService(this._firebaseFirestore);

  Future<void> createCollectionDocForNewUser(String uid) async {
    // consider using batch for populating default values
    // var batch = _firebaseFirestore.batch();
    return await _firebaseFirestore.collection('users').doc(uid).collection('accounts').doc().set({
      'accName': 'Cash',
      'accBalance': 0,
      'accIcon': '',
      'accNote': '',
    });
  }

  // Future
}