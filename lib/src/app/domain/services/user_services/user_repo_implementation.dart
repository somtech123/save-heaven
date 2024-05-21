// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:save_heaven/src/app/domain/services/user_services/user_repo.dart';
import 'package:save_heaven/src/ui/shared/toast.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserRepoImplementation extends UserRepository {
  final _client = Supabase.instance.client;

  @override
  uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
      withData: true,
    );
    if (result == null) {
      showToastMessage('An Error occured uploading file', isError: true);

      return;
    } else {
      // try{} on
      PlatformFile _file = result.files[0];

      debugPrint(_file.name);

      final _fileExtension = _file.extension!.split('.').last.toLowerCase();

      final bytes = _file.bytes;

      debugPrint(bytes.toString());

      final userId = _client.auth.currentUser!.id;

      await _client.storage.from('user').uploadBinary('/$userId', bytes!,
          fileOptions:
              FileOptions(upsert: true, contentType: 'file/$_fileExtension'));

      showToastMessage('Successfuly uploaded file', isError: false);
    }
  }
}
