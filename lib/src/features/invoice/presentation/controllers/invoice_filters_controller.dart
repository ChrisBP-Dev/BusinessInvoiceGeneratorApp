import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_enums.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_filters.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'invoice_filters_controller.g.dart';

@riverpod
class InvoiceFiltersController extends _$InvoiceFiltersController {
  @override
  InvoiceFilters build() {
    return const InvoiceFilters();
  }

  void updateSortType(InvoiceSortType sortType) {
    state = state.copyWith(sortType: sortType);
  }

  void toggleSortDirection() {
    state = state.copyWith(sortAscending: !state.sortAscending);
  }

  void updateTimeFilter(InvoiceTimeFilter timeFilter) {
    state = state.copyWith(timeFilter: timeFilter);
  }

  void togglePaymentStatus(bool? isPaid) {
    state = state.copyWith(isPaid: isPaid);
  }

  void toggleSentStatus(bool? isSent) {
    state = state.copyWith(isSent: isSent);
  }

  void resetFilters() {
    state = const InvoiceFilters();
  }
}

@riverpod
Stream<List<Invoice>> filteredInvoices(
  Ref ref,
  String businessId,
) async* {
  final filters = ref.watch(invoiceFiltersControllerProvider);
  final repository = ref.watch(invoicesRepositoryProvider);

  // Nos suscribimos directamente al stream del repositorio
  await for (final either in repository.getInvoicesStream(businessId)) {
    // Procesamos cada evento del stream
    final invoices = either.fold(
      (error) => <Invoice>[],
      (list) => list,
    );

    // Aplicamos los filtros y emitimos el resultado
    yield _applyFilters(invoices, filters);
  }
}

@riverpod
Stream<List<Invoice>> filteredCustomerInvoices(
  Ref ref,
  String businessId,
  String customerId,
) async* {
  final filters = ref.watch(invoiceFiltersControllerProvider);
  final repository = ref.watch(invoicesRepositoryProvider);

  // Nos suscribimos directamente al stream del repositorio
  await for (final either in repository.getInvoicesByCustomerIDStream(
    businessId,
    customerId,
  )) {
    // Procesamos cada evento del stream
    final invoices = either.fold(
      (error) => <Invoice>[],
      (list) => list,
    );

    // Aplicamos los filtros y emitimos el resultado
    yield _applyFilters(invoices, filters);
  }
}

List<Invoice> _applyFilters(List<Invoice> invoices, InvoiceFilters filters) {
  // Los documentos ya vienen ordenados por createdAt desde Firestore
  final filtered = invoices.where((invoice) {
    final isPaid = invoice.status == InvoiceStatus.paid;
    final isSent = invoice.sentStatus == InvoiceSentStatus.sent;

    if (filters.isPaid != null && isPaid != filters.isPaid) return false;
    if (filters.isSent != null && isSent != filters.isSent) return false;

    final now = DateTime.now();
    final invoiceDate = invoice.invoiceDate;

    switch (filters.timeFilter) {
      case InvoiceTimeFilter.allTime:
        return true;
      case InvoiceTimeFilter.thisMonth:
        return invoiceDate.year == now.year && invoiceDate.month == now.month;
      case InvoiceTimeFilter.lastMonth:
        final lastMonth = DateTime(now.year, now.month - 1);
        return invoiceDate.year == lastMonth.year &&
            invoiceDate.month == lastMonth.month;
      case InvoiceTimeFilter.thisYear:
        return invoiceDate.year == now.year;
      case InvoiceTimeFilter.lastYear:
        return invoiceDate.year == now.year - 1;
      case InvoiceTimeFilter.custom:
        return true;
    }
  }).toList();

  // Solo aplicamos sort si el usuario ha seleccionado un tipo de ordenamiento diferente
  // o si quiere cambiar la dirección del ordenamiento por defecto
  if (filters.sortType != InvoiceSortType.createdAt || filters.sortAscending) {
    filtered.sort((a, b) {
      var comparison = 0;
      switch (filters.sortType) {
        case InvoiceSortType.createdAt:
          comparison = a.createdAt.compareTo(b.createdAt);
        case InvoiceSortType.invoiceDate:
          comparison = a.invoiceDate.compareTo(b.invoiceDate);
        case InvoiceSortType.totalAmount:
          comparison = a.total.compareTo(b.total);
        case InvoiceSortType.paymentStatus:
          comparison = a.status.index.compareTo(b.status.index);
        case InvoiceSortType.sentStatus:
          comparison = a.sentStatus.index.compareTo(b.sentStatus.index);
      }
      return filters.sortAscending ? comparison : -comparison;
    });
  }

  return filtered;
}
