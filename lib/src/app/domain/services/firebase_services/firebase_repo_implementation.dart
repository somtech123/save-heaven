import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:save_heaven/src/app/domain/services/firebase_services/firebase_repo.dart';

class FirebaseServices extends FirebaseRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
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

  @override
  Future<String> uploadFiles(File file) async {
    String fileUrl = '';
    try {
      Reference ref = _storage.ref().child(
          'files/${_auth.currentUser!.uid}/${DateTime.now().millisecondsSinceEpoch.toString()}');

      UploadTask uploadTask = ref.putFile(file);

      TaskSnapshot snap = await uploadTask;

      fileUrl = await snap.ref.getDownloadURL();
    } catch (e) {
      // return e.toString();
    }
    return fileUrl;
  }

  @override
  Future<void> updateUserFile(
      {required String path,
      required String pathName,
      required String downLoadUrl}) async {
    await _firestore
        .collection("users")
        .doc(_auth.currentUser!.uid)
        .collection('files')
        .add({
      'file': {'path': path, 'pathName': pathName, 'downloadUrl': downLoadUrl}
    });
  }
}
