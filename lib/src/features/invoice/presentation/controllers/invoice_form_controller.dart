import 'package:business_invoice_generator_app/src/core/utils/sequential_number_format.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/auth_repository.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_item.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_number_generator.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_validator.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'invoice_form_controller.g.dart';
part 'invoice_form_controller.freezed.dart';

@riverpod
class InvoiceFormController extends _$InvoiceFormController {
  @override
  InvoiceFormState build() {
    return InvoiceFormState(
      invoiceDate: DateTime.now(),
    );
  }

  Future<void> _initInvoiceNumber() async {
    final currentUser = ref.read(authRepositoryProvider).currentAppUser;
    if (currentUser == null) return;

    final nextNumberEither = await ref.read(
      nextInvoiceNumberProvider(currentUser.id).future,
    );

    nextNumberEither.fold(
      (error) {
        // Si hay error, mantenemos el estado actual y no asignamos un número
        // Esto evita asignar números potencialmente duplicados
        // El usuario deberá reintentar la operación
      },
      (number) {
        state = state.copyWith(
          invoiceNumber: number,
          hasInvoiceNumberError: false,
        );
      },
    );
  }

  void initForEdit(Invoice invoice) {
    state = state.copyWith(
      invoiceNumber: invoice.invoiceNumber,
      invoiceDate: invoice.invoiceDate,
      customer: invoice.customer,
      items: invoice.items,
      notes: invoice.notes,
      jobName: invoice.jobName ?? '',
      advancePayment: invoice.advancePayment,
      hasInvoiceNumberError: false,
    );
  }

  void initForCreate() {
    _initInvoiceNumber();
  }

  void setInvoiceDate(DateTime date) {
    state = state.copyWith(invoiceDate: date);
  }

  void setCustomer(Customer customer) {
    state = state.copyWith(customer: customer);
  }

  void addInvoiceItem(InvoiceItem item) {
    state = state.copyWith(
      items: [...state.items, item.copyWith(id: const Uuid().v4())],
    );
  }

  void updateInvoiceItem(InvoiceItem updatedItem) {
    final items = [...state.items];
    final index = items.indexWhere((item) => item.id == updatedItem.id);

    if (index != -1) {
      items[index] = updatedItem;
      state = state.copyWith(items: items);
    }
  }

  void removeInvoiceItem(String itemId) {
    state = state.copyWith(
      items: state.items.where((item) => item.id != itemId).toList(),
    );
  }

  void setNotes(String? notes) {
    state = state.copyWith(notes: notes ?? '');
  }

  void setJobName(String? jobName) {
    state = state.copyWith(jobName: jobName ?? '');
  }

  void setAdvancePayment(double? advancePayment) {
    try {
      const InvoiceValidator().validateAdvancePayment(
        advancePayment,
        state.subtotal,
      );
      state = state.copyWith(advancePayment: advancePayment);
    } on InvoiceException catch (_) {
      // Don't update if there's an error
    }
  }

  void resetState() {
    state = InvoiceFormState(
      invoiceDate: DateTime.now(),
    );
    _initInvoiceNumber();
  }

  Invoice? createInvoice({String? id, int? invoiceNumber}) {
    if (!state.isValid || state.hasInvoiceNumberError) return null;

    final invoice = Invoice(
      id: id ?? const Uuid().v4(),
      invoiceNumber: invoiceNumber ?? state.invoiceNumber,
      invoiceDate: state.invoiceDate,
      customer: state.customer!,
      items: state.items,
      notes: state.notes,
      jobName: state.jobName,
      advancePayment: state.advancePayment,
      createdAt: DateTime.now(), // Siempre asignamos la fecha actual
    );

    try {
      const InvoiceValidator().validate(invoice);
      return invoice;
    } on InvoiceException catch (_) {
      return null;
    }
  }
}

@freezed
class InvoiceFormState with _$InvoiceFormState {
  const factory InvoiceFormState({
    required DateTime invoiceDate,
    Customer? customer,
    @Default([]) List<InvoiceItem> items,
    @Default('') String notes,
    @Default('') String jobName,
    double? advancePayment,
    @Default(0) int invoiceNumber,
    @Default(false) bool hasInvoiceNumberError,
  }) = _InvoiceFormState;

  const InvoiceFormState._();

  double get subtotal => items.fold(
        0,
        (sum, item) => sum + item.total,
      );

  double get total => subtotal - (advancePayment ?? 0);

  String get formattedInvoiceNumber => invoiceNumber.formatInvoiceNumber;

  bool get isValid => customer != null && items.isNotEmpty;
}

@riverpod
InvoiceItem? invoiceItemByIndex(Ref ref, String itemId) {
  final items = ref.watch(invoiceFormControllerProvider).items;
  return items.firstWhereOrNull((item) => item.id == itemId);
}

/// Provider para obtener el siguiente número de factura
@riverpod
Future<int> getNextInvoiceNumber(Ref ref, String userID) async {
  final stream = ref.watch(getInvoicesStreamProvider(userID));
  final either = stream.valueOrNull;
  if (either == null) return 1;

  return either.fold(
    (error) => 1, // Si hay error, empezamos desde 1
    (invoices) {
      if (invoices.isEmpty) return 1;

      final maxNumber = invoices.fold<int>(
        0,
        (max, invoice) =>
            invoice.invoiceNumber > max ? invoice.invoiceNumber : max,
      );

      return maxNumber + 1;
    },
  );
}
