import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_entity.freezed.dart';

@freezed
class DashboardEntity with _$DashboardEntity {
  const DashboardEntity._();

  const factory DashboardEntity() = $DashboardEntity;

  factory DashboardEntity.empty() => const DashboardEntity();
}
