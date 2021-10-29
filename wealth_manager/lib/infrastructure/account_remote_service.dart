import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wealth_manager/infrastructure/dto_models/account_dto.dart';

class AccountRemoteService {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  AccountRemoteService(this._firebaseFirestore, this._firebaseAuth);

  Future<void> createCollectionDocForNewUser(String uid) async {
    // consider using batch for populating default values
    // var batch = _firebaseFirestore.batch();
    return await _firebaseFirestore
        .collection('users')
        .doc(uid)
        .collection('accounts')
        .doc()
        .set({
      'accName': 'Cash',
      'accBalance': 0,
      'accIcon': '',
      'accNote': '',
    });
  }

  Future<List<AccountDTO>> getAccountList() async {
    String uid = getUserId();
    return await _firebaseFirestore
        .collection('users')
        .doc(uid)
        .collection('accounts')
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((docSnapshot) => AccountDTO.fromJson(docSnapshot.data()))
            .toList());
  }

  Future<void> addNewAccount(AccountDTO newAcc) async {
    String uid = getUserId();
    // get account id
    final newId = generateNewAccountId();

    // set new account id
    newAcc = AccountDTO(
      accId: newId,
      accName: newAcc.accName,
      accBalance: newAcc.accBalance,
      accIcon: newAcc.accIcon,
      accNote: newAcc.accNote,
    );

    return await _firebaseFirestore
        .collection('users')
        .doc(uid)
        .collection('accounts')
        .doc(newAcc.accId)
        .set(newAcc.toJson());
  }

  // Future<void> addNewTransaction(String uid, ) async {
  //   return await _firebaseFirestore.collection('users').doc(uid).collection('transactions').doc().set({

  //   });
  // }

  String generateNewAccountId() {
    String uid = getUserId();
    final ref = _firebaseFirestore
        .collection('users')
        .doc(uid)
        .collection('accounts')
        .doc();
    return ref.id;
  }

  String getUserId() {
    return _firebaseAuth.currentUser!.uid;
  }
}
