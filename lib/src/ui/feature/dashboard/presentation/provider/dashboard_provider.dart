// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_heaven/src/app/domain/manager/user_manager/user_client.dart';
import 'package:save_heaven/src/app/helper/local_state.dart';
import 'package:save_heaven/src/ui/feature/dashboard/dashboard.dart';
import 'package:save_heaven/src/ui/feature/dashboard/data/model/user_file_model.dart';
import 'package:save_heaven/src/ui/shared/toast.dart';
import 'package:path/path.dart' as path;
import 'package:save_heaven/src/utils/utils.dart';

import '../../../../shared/dialog/app_dialog.dart';

class DashboardProvider extends StateNotifier<DashboardState> {
  DashboardProvider()
      : super(DashboardState(
            entity: DashboardEntity.empty(),
            isGrid: false,
            userFile: [],
            loadingState: LoadingState.initial));

  void switchView() {
    state = state.copyWith(isGrid: !state.isGrid);
  }

  void uploadFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      //allowedExtensions: ['jpg', 'pdf', 'doc', 'png'],
      withData: true,
    );

    if (result != null) {
      buildLoadingAlert(context);
      File file = File(result.files[0].path!);

      String fileName = path.basename(file.path);

      String downLoadUrl = await UserClient.instance.uploadFiles(file);

      if (downLoadUrl.isNotEmpty) {
        await UserClient.instance.updateUserFile(
            path: file.path, pathName: fileName, downLoadUrl: downLoadUrl);

        List<UserFileModel> data = await UserClient.instance.getUserFiles();

        state = state.copyWith(userFile: data);
      } else {
        showToastMessage('Could\'nt upload file', isError: true);
      }

      pop(context);

      showToastMessage('File uploaded successfully', isError: false);
    } else {
      showToastMessage('An Error occured uploading file', isError: true);

      return;
    }
  }

  getUserFile() async {
    state = state.copyWith(loadingState: LoadingState.loading);

    List<UserFileModel> data = await UserClient.instance.getUserFiles();

    state = state.copyWith(loadingState: LoadingState.loaded, userFile: data);
  }
}
