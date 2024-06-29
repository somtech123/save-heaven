import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:save_heaven/src/app/domain/services/firebase_services/firebase_repo.dart';

class FirebaseServices extends FirebaseRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Future<void> createUser(
      {required UserCredential cred, required String username}) async {
    await _firestore.collection("users").doc(cred.user!.uid).set({
      "userName": username,
      'id': cred.user!.uid,
      'email': cred.user!.email,
      "dateCreated": DateTime.now().toIso8601String(),
      'profileImage': '',
    });
  }
}
