import 'package:business_invoice_generator_app/src/core/services/firestore_service/firestore_exception.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/invoice/data/invoice_firestore_service.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoices_repository.dart';
import 'package:fpdart/fpdart.dart';

class FirebaseInvoicesRepositoryImp implements InvoicesRepository {
  const FirebaseInvoicesRepositoryImp({
    required this.invoiceFirestoreService,
  });

  final InvoiceFirestoreService invoiceFirestoreService;

  @override
  Stream<Either<InvoiceException, List<Invoice>>> getInvoicesStream(
    UserID userID,
  ) async* {
    try {
      await for (final invoices
          in invoiceFirestoreService.getInvoicesStream(userID)) {
        yield right(invoices);
      }
    } on FirestoreException catch (e) {
      yield left(
        InvoiceException.notFound(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Stream<Either<InvoiceException, List<Invoice>>> getInvoicesByCustomerIDStream(
    UserID userID,
    String customerID,
  ) async* {
    try {
      await for (final invoices in invoiceFirestoreService
          .getInvoicesByCustomerIDStream(userID, customerID)) {
        yield right(invoices);
      }
    } on FirestoreException catch (e) {
      yield left(
        InvoiceException.notFound(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<InvoiceException, Unit>> addInvoice(
    Invoice invoice,
    UserID userID,
  ) async {
    try {
      await invoiceFirestoreService.createInvoice(invoice, userID);
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        InvoiceException.createFailed(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<InvoiceException, Unit>> updateInvoice(
    Invoice invoice,
    UserID userID,
  ) async {
    try {
      await invoiceFirestoreService.updateInvoice(invoice, userID);
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        InvoiceException.updateFailed(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<InvoiceException, Unit>> deleteInvoice(
    Invoice invoice,
    UserID userID,
  ) async {
    try {
      await invoiceFirestoreService.deleteInvoice(invoice, userID);
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        InvoiceException.deleteFailed(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<InvoiceException, Invoice?>> getInvoiceByID(
    UserID userID,
    String invoiceID,
  ) async {
    try {
      final invoice =
          await invoiceFirestoreService.getInvoiceByID(userID, invoiceID);
      return right(invoice);
    } on FirestoreException catch (e) {
      return left(
        InvoiceException.notFound(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Stream<Either<InvoiceException, Invoice?>> watchInvoiceByID(
    UserID userID,
    String invoiceID,
  ) async* {
    try {
      await for (final invoice
          in invoiceFirestoreService.watchInvoiceByID(userID, invoiceID)) {
        yield right(invoice);
      }
    } on FirestoreException catch (e) {
      yield left(
        InvoiceException.notFound(
          stackTrace: e.stackTrace,
        ),
      );
    }
  }
}
