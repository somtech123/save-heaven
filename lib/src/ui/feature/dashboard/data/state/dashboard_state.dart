import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_heaven/src/app/helper/local_state.dart';
import 'package:save_heaven/src/ui/feature/dashboard/dashboard.dart';
import 'package:save_heaven/src/ui/feature/dashboard/data/model/user_file_model.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState(
      {required DashboardEntity entity,
      required List<UserFileModel> userFile,
      @Default(LoadingState.initial) LoadingState loadingState,
      @Default(false) bool isGrid}) = $DashboardState;
}
