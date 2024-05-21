import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_heaven/src/ui/feature/dashboard/dashboard.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState(
      {required DashboardEntity entity,
      @Default(false) bool isGrid}) = $DashboardState;
}
