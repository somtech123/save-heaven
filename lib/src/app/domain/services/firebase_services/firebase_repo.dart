import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseRepository {
  Future<void> createUser(
      {required UserCredential cred, required String username});

  Future<String> uploadFiles(File file);

  Future<void> updateUserFile(
      {required String path,
      required String pathName,
      required String downLoadUrl});
}
