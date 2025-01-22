import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_exceptions.freezed.dart';

@freezed
class InvoiceException with _$InvoiceException implements Exception {
  const factory InvoiceException.notFound({
    required StackTrace stackTrace,
    @Default('Invoice not found') String message,
  }) = InvoiceNotFound;

  const factory InvoiceException.invalidData({
    required StackTrace stackTrace,
    @Default('Invalid invoice data') String message,
  }) = InvoiceInvalidData;

  const factory InvoiceException.createFailed({
    required StackTrace stackTrace,
    @Default('Failed to create invoice') String message,
  }) = InvoiceCreateFailed;

  const factory InvoiceException.updateFailed({
    required StackTrace stackTrace,
    @Default('Failed to update invoice') String message,
  }) = InvoiceUpdateFailed;

  const factory InvoiceException.deleteFailed({
    required StackTrace stackTrace,
    @Default('Failed to delete invoice') String message,
  }) = InvoiceDeleteFailed;
}
