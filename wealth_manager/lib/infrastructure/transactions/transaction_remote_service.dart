import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wealth_manager/infrastructure/transactions/dto_models/transaction_dto.dart';

class TransactionRemoteService {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  TransactionRemoteService(this._firebaseFirestore, this._firebaseAuth);

  Future<List<TransactionDTO>> getTransactionList() async {
    String uid = getUserId();
    return await _firebaseFirestore
        .collection('users')
        .doc(uid)
        .collection('transactions')
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((docSnapshot) => TransactionDTO.fromJson(docSnapshot.data()))
            .toList());
  }

  Future<void> addNewAccount(TransactionDTO newTx) async {
    String uid = getUserId();
    // get account id
    final newId = generateNewAccountId();

    // set new account id
    newTx = TransactionDTO(
      txId: newTx.txId,
      txType: newTx.txType,
      txAmount: newTx.txAmount,
      accountId: newTx.accountId,
      categoryId: newTx.categoryId,
      txDate: newTx.txDate,
      txNote: newTx.txNote,
      transferAcc: newTx.transferAcc,
    );

    // print("remoteservice try to add new acc");

    return await _firebaseFirestore
        .collection('users')
        .doc(uid)
        .collection('transactions')
        .doc(newTx.txId)
        .set(newTx.toJson());
  }

  Future<void> updateAccount(TransactionDTO newTx) async {
    String uid = getUserId();

    return await _firebaseFirestore
        .collection('users')
        .doc(uid)
        .collection('transactions')
        .doc(newTx.txId)
        .set(newTx.toJson());
  }

  Future<void> deleteAccount(String txId) async {
    String uid = getUserId();

    return await _firebaseFirestore
        .collection('users')
        .doc(uid)
        .collection('accounts')
        .doc(txId)
        .delete();
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
