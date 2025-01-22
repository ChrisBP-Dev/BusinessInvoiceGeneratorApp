import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_filters.freezed.dart';

/// Tipos de ordenamiento para facturas
enum InvoiceSortType {
  /// Por fecha de creación
  createdAt,

  /// Por fecha de factura
  invoiceDate,

  /// Por monto total
  totalAmount,

  /// Por estado de pago
  paymentStatus,

  /// Por estado de envío
  sentStatus,
}

/// Filtros temporales para facturas
enum InvoiceTimeFilter {
  /// Todo el tiempo
  allTime,

  /// Este mes
  thisMonth,

  /// Mes anterior
  lastMonth,

  /// Este año
  thisYear,

  /// Año anterior
  lastYear,

  /// Rango personalizado
  custom,
}

/// Modelo de filtros para facturas
@freezed
class InvoiceFilters with _$InvoiceFilters {
  const factory InvoiceFilters({
    @Default(InvoiceSortType.createdAt) InvoiceSortType sortType,
    @Default(false) bool sortAscending,
    @Default(InvoiceTimeFilter.allTime) InvoiceTimeFilter timeFilter,
    DateTime? startDate,
    DateTime? endDate,
    bool? isPaid,
    bool? isSent,
  }) = _InvoiceFilters;
}
