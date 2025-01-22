import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats.freezed.dart';

@freezed
class DashboardStats with _$DashboardStats {
  const factory DashboardStats({
    @Default(0) int totalCustomers,
    @Default(0) int totalServices,
    @Default(0) int totalInvoices,
    @Default(0.0) double totalAmount,
  }) = _DashboardStats;
}
