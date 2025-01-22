import 'package:business_invoice_generator_app/src/core/services/firestore_service/firestore_exception.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer_validator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customer_firestore_service.g.dart';

/// {@template customer_firestore_service}
/// Service to interact with customers collection in Firestore
/// {@endtemplate}
class CustomerFirestoreService {
  /// {@macro customer_firestore_service}
  const CustomerFirestoreService(
    this._firestore, {
    required this.customersPath,
    CustomerValidator? validator,
  }) : _validator = validator ?? const CustomerValidator();

  final FirebaseFirestore _firestore;
  final String customersPath;
  final CustomerValidator _validator;

  /// Builds the collection path for a specific user
  String collectionPath(String userID) {
    _validator.validateId(userID);
    return '/users/$userID/$customersPath';
  }

  /// Gets the reference to the customers collection for a user
  CollectionReference<Map<String, dynamic>> _customersCollection(
    String userID,
  ) {
    return _firestore.collection(collectionPath(userID));
  }

  /// Gets a stream of all customers
  Stream<List<Customer>> getCustomersStream(String userID) {
    try {
      return _customersCollection(userID).snapshots().map(
            (snapshot) => snapshot.docs
                .map(
                  (doc) => Customer.fromJson(doc.data()),
                )
                .toList(),
          );
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Gets a stream of a specific customer
  Stream<Customer?> watchCustomerByID(String userID, String customerID) {
    try {
      return _customersCollection(userID)
          .doc(customerID)
          .snapshots()
          .map((doc) => doc.exists ? Customer.fromJson(doc.data()!) : null);
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Creates a new customer
  Future<void> createCustomer(Customer customer, String userID) async {
    try {
      await _customersCollection(userID)
          .doc(customer.id)
          .set(customer.toJson());
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Updates an existing customer
  Future<void> updateCustomer(Customer customer, String userID) async {
    try {
      await _customersCollection(userID)
          .doc(customer.id)
          .update(customer.toJson());
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Deletes a customer
  Future<void> deleteCustomer(Customer customer, String userID) async {
    try {
      await _customersCollection(userID).doc(customer.id).delete();
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }

  /// Gets a customer by ID
  Future<Customer?> getCustomerByID(String userID, String customerID) async {
    try {
      final doc = await _customersCollection(userID).doc(customerID).get();
      return doc.exists ? Customer.fromJson(doc.data()!) : null;
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    }
  }
}

/// Provider for the customer Firestore service
@riverpod
CustomerFirestoreService customerFirestoreService(
  Ref ref,
) {
  return CustomerFirestoreService(
    FirebaseFirestore.instance,
    customersPath: Customer.collectionPath,
  );
}
