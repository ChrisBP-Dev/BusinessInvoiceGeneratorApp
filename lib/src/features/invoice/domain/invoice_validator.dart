import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_item.dart';

/// {@template invoice_validator}
/// Validator for [Invoice]
/// Contains all validation logic for invoices
/// {@endtemplate}
class InvoiceValidator {
  /// {@macro invoice_validator}
  const InvoiceValidator();

  /// Validates an invoice
  /// Throws [InvoiceException] if validation fails
  void validate(Invoice invoice) {
    validateId(invoice.id);
    validateInvoiceNumber(invoice.invoiceNumber);
    validateItems(invoice.items);
    validateAdvancePayment(invoice.advancePayment, invoice.subtotal);
    validateTotal(invoice.total);
  }

  /// Validates the invoice ID
  void validateId(String id) {
    if (id.trim().isEmpty) {
      throw InvoiceException.invalidData(
        message: 'Invoice ID cannot be empty',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the invoice number
  void validateInvoiceNumber(int invoiceNumber) {
    if (invoiceNumber <= 0) {
      throw InvoiceException.invalidData(
        message: 'Invoice number must be greater than 0',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the invoice items
  void validateItems(List<InvoiceItem> items) {
    if (items.isEmpty) {
      throw InvoiceException.invalidData(
        message: 'Invoice must have at least one item',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the advance payment
  void validateAdvancePayment(double? advancePayment, double subtotal) {
    if (advancePayment == null) return;

    if (advancePayment < 0) {
      throw InvoiceException.invalidData(
        message: 'Advance payment cannot be negative',
        stackTrace: StackTrace.current,
      );
    }

    if (advancePayment >= subtotal) {
      throw InvoiceException.invalidData(
        message: 'Advance payment cannot be greater than or equal to the total',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the total
  void validateTotal(double total) {
    if (total <= 0) {
      throw InvoiceException.invalidData(
        message: 'Invoice total must be greater than 0',
        stackTrace: StackTrace.current,
      );
    }
  }
}
