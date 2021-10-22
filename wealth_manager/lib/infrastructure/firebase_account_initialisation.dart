import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAccountInitialisation{
  final FirebaseFirestore _firebaseFirestore;

  FirebaseAccountInitialisation(this._firebaseFirestore);

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
}