import 'dart:io';

import 'package:save_heaven/src/app/domain/services/firebase_services/firebase_repo_implementation.dart';
import 'package:save_heaven/src/app/domain/services/user_services/user_repo_implementation.dart';
import 'package:save_heaven/src/ui/feature/dashboard/data/model/user_file_model.dart';

class UserClient {
  UserClient._internal();

  static final UserClient _instance = UserClient._internal();
  static UserClient get instance => _instance;

  final FirebaseServices _firebaseServices = FirebaseServices();

  final UserRepoImplementation _userRepoImplementation =
      UserRepoImplementation();

  Future<String> uploadFiles(File file) async =>
      _firebaseServices.uploadFiles(file);

  Future<void> updateUserFile(
          {required String path,
          required String pathName,
          required String downLoadUrl}) =>
      _firebaseServices.updateUserFile(
          path: path, pathName: pathName, downLoadUrl: downLoadUrl);

  Future<List<UserFileModel>> getUserFiles() =>
      _userRepoImplementation.getUserFiles();
}
