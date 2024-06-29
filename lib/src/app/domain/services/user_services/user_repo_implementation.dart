// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:save_heaven/src/app/domain/services/user_services/user_repo.dart';
import 'package:save_heaven/src/ui/feature/dashboard/data/model/user_file_model.dart';

class UserRepoImplementation extends UserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<List<UserFileModel>> getUserFiles() async {
    final snapShot = await _firestore
        .collection("users")
        .doc(_auth.currentUser!.uid)
        .collection('files')
        //.doc(_auth.currentUser!.uid)
        .get();

    final data = snapShot.docs.map((DocumentSnapshot<Map<String, dynamic>> e) {
      return UserFileModel.fromJson(e.data()!['file']);
    }).toList();

    return data;
  }
}
