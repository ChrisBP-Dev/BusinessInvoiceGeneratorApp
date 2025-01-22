import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/invoice/data/firebase_invoices_repository_imp.dart';
import 'package:business_invoice_generator_app/src/features/invoice/data/invoice_firestore_service.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_exceptions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'invoices_repository.g.dart';

/// {@template invoices_repository}
/// Repository interface for managing invoices
/// {@endtemplate}
abstract class InvoicesRepository {
  /// Gets a stream of all invoices for a user
  Stream<Either<InvoiceException, List<Invoice>>> getInvoicesStream(
    UserID userID,
  );

  /// Gets a stream of invoices for a specific customer
  Stream<Either<InvoiceException, List<Invoice>>> getInvoicesByCustomerIDStream(
    UserID userID,
    String customerID,
  );

  /// Gets a stream of a specific invoice
  Stream<Either<InvoiceException, Invoice?>> watchInvoiceByID(
    UserID userID,
    String invoiceID,
  );

  /// Creates a new invoice
  Future<Either<InvoiceException, Unit>> addInvoice(
    Invoice invoice,
    UserID userID,
  );

  /// Updates an existing invoice
  Future<Either<InvoiceException, Unit>> updateInvoice(
    Invoice invoice,
    UserID userID,
  );

  /// Deletes an invoice
  Future<Either<InvoiceException, Unit>> deleteInvoice(
    Invoice invoice,
    UserID userID,
  );

  /// Gets an invoice by ID
  Future<Either<InvoiceException, Invoice?>> getInvoiceByID(
    UserID userID,
    String invoiceID,
  );
}

/// Provider for the invoices repository
@Riverpod(keepAlive: true)
InvoicesRepository invoicesRepository(Ref ref) {
  return FirebaseInvoicesRepositoryImp(
    invoiceFirestoreService: ref.watch(invoiceFirestoreServiceProvider),
  );
}

/// Provider for getting a stream of all invoices
@riverpod
Stream<Either<InvoiceException, List<Invoice>>> getInvoicesStream(
  Ref ref,
  UserID userID,
) {
  return ref.watch(invoicesRepositoryProvider).getInvoicesStream(userID);
}

/// Provider for getting a stream of invoices for a specific customer
@riverpod
Stream<Either<InvoiceException, List<Invoice>>> getInvoicesByCustomerIDStream(
  Ref ref,
  UserID userID,
  String customerID,
) {
  return ref
      .watch(invoicesRepositoryProvider)
      .getInvoicesByCustomerIDStream(userID, customerID);
}

/// Provider for getting a stream of a specific invoice
@riverpod
Stream<Either<InvoiceException, Invoice?>> watchInvoiceByID(
  Ref ref,
  UserID userID,
  String invoiceID,
) {
  return ref
      .watch(invoicesRepositoryProvider)
      .watchInvoiceByID(userID, invoiceID);
}
