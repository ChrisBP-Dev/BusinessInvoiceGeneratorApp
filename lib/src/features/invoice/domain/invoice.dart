import 'package:business_invoice_generator_app/src/core/utils/sequential_number_format.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/file_and_path.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_enums.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

typedef InvoiceID = String;

@freezed
class Invoice with _$Invoice {
  // ignore: invalid_annotation_target : to use explicitToJsons
  @JsonSerializable(explicitToJson: true)
  factory Invoice({
    required InvoiceID id,
    required int invoiceNumber,
    required DateTime invoiceDate,
    required Customer customer,
    required List<InvoiceItem> items,
    required DateTime createdAt,
    @Default('') String notes,
    String? jobName,
    double? advancePayment,
    @Default(InvoiceSentStatus.draft) InvoiceSentStatus sentStatus,
    @Default(InvoiceStatus.pendingPayment) InvoiceStatus status,
    @Default(FileAndPath()) FileAndPath pdfLink,
  }) = _Invoice;

  const Invoice._();

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  static const collectionPath = 'invoices';

  String get formattedInvoiceNumber => invoiceNumber.formatInvoiceNumber;
}

extension InvoiceX on Invoice {
  double get subtotal => items.fold(
        0,
        (previousValue, element) => previousValue + element.total,
      );

  double get total => subtotal - (advancePayment ?? 0);

  bool get isPaid => status == InvoiceStatus.paid;
}
