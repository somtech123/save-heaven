import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_heaven/src/ui/feature/dashboard/dashboard.dart';

class DashboardProvider extends StateNotifier<DashboardState> {
  DashboardProvider()
      : super(DashboardState(entity: DashboardEntity.empty(), isGrid: false));

  void switchView() {
    state = state.copyWith(isGrid: !state.isGrid);
  }
}
