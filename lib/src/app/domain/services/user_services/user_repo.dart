import 'package:save_heaven/src/ui/feature/dashboard/data/model/user_file_model.dart';

abstract class UserRepository {
  Future<List<UserFileModel>> getUserFiles();
}
