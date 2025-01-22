import 'package:business_invoice_generator_app/src/core/services/firestore_service/firestore_exception.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice.dart';
import 'package:business_invoice_generator_app/src/features/invoice/domain/invoice_validator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'invoice_firestore_service.g.dart';

/// {@template invoice_firestore_service}
/// Service to interact with invoices collection in Firestore
/// {@endtemplate}
class InvoiceFirestoreService {
  /// {@macro invoice_firestore_service}
  const InvoiceFirestoreService(
    this._firestore, {
    required this.invoicesPath,
  });

  final FirebaseFirestore _firestore;
  final String invoicesPath;

  /// Builds the collection path for a specific user
  String collectionPath(String userID) {
    return '/users/$userID/$invoicesPath';
  }

  /// Gets the reference to the invoices collection for a user
  CollectionReference<Map<String, dynamic>> _invoicesCollection(
    String userID,
  ) {
    return _firestore.collection(collectionPath(userID));
  }

  /// Gets a stream of all invoices
  Stream<List<Invoice>> getInvoicesStream(String userID) {
    try {
      return _invoicesCollection(userID)
          .orderBy('createdAt', descending: true)
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map(
                  (doc) => Invoice.fromJson(doc.data()),
                )
                .toList(),
          );
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Gets a stream of invoices for a specific customer
  Stream<List<Invoice>> getInvoicesByCustomerIDStream(
    String userID,
    String customerID,
  ) {
    try {
      return _invoicesCollection(userID)
          .where('customer.id', isEqualTo: customerID)
          .orderBy('createdAt', descending: true)
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map(
                  (doc) => Invoice.fromJson(doc.data()),
                )
                .toList(),
          );
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Gets a stream of a specific invoice
  Stream<Invoice?> watchInvoiceByID(String userID, String invoiceID) {
    try {
      return _invoicesCollection(userID)
          .doc(invoiceID)
          .snapshots()
          .map((doc) => doc.exists ? Invoice.fromJson(doc.data()!) : null);
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Creates a new invoice
  Future<void> createInvoice(Invoice invoice, String userID) async {
    try {
      final invoiceWithCreatedAt = invoice.copyWith(
        createdAt: DateTime.now(),
      );
      await _invoicesCollection(userID)
          .doc(invoice.id)
          .set(invoiceWithCreatedAt.toJson());
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Updates an existing invoice
  Future<void> updateInvoice(Invoice invoice, String userID) async {
    try {
      await _invoicesCollection(userID)
          .doc(invoice.id)
          .update(invoice.toJson());
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Deletes an invoice
  Future<void> deleteInvoice(Invoice invoice, String userID) async {
    try {
      await _invoicesCollection(userID).doc(invoice.id).delete();
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Gets an invoice by ID
  Future<Invoice?> getInvoiceByID(String userID, String invoiceID) async {
    try {
      final doc = await _invoicesCollection(userID).doc(invoiceID).get();
      return doc.exists ? Invoice.fromJson(doc.data()!) : null;
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }
}

/// Provider for the invoice Firestore service
@riverpod
InvoiceFirestoreService invoiceFirestoreService(
  Ref ref,
) {
  return InvoiceFirestoreService(
    FirebaseFirestore.instance,
    invoicesPath: Invoice.collectionPath,
  );
}
