import 'package:business_invoice_generator_app/src/core/services/firestore_service/firestore_exception.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// {@template service_firestore_service}
/// Service to handle Firestore operations for services
/// {@endtemplate}
class ServiceFirestoreService {
  /// {@macro service_firestore_service}
  const ServiceFirestoreService(this._firestore);

  final FirebaseFirestore _firestore;

  /// Get a stream of services from a collection
  Stream<List<ServiceModel>> getServicesStream({
    required String collectionPath,
    Query<Map<String, dynamic>> Function(Query<Map<String, dynamic>>)?
        queryBuilder,
  }) {
    try {
      Query<Map<String, dynamic>> query = _firestore.collection(collectionPath);
      if (queryBuilder != null) {
        query = queryBuilder(query);
      }
      return query.snapshots().map((snapshot) {
        return snapshot.docs.map((doc) {
          try {
            return ServiceModel.fromJson({
              ...doc.data(),
              'id': doc.id,
            });
          } catch (e, st) {
            throw FirestoreException(
              message: 'Failed to parse service data: $e',
              errorType: FirestoreErrorType.invalidData,
              stackTrace: st,
            );
          }
        }).toList();
      });
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      if (e is FirestoreException) rethrow;
      throw FirestoreException(
        message: 'Failed to get services stream: $e',
        errorType: FirestoreErrorType.readError,
        stackTrace: st,
      );
    }
  }

  /// Get a stream of a specific service
  Stream<ServiceModel?> getServiceStream({
    required String collectionPath,
    required String documentId,
  }) {
    try {
      return _firestore
          .collection(collectionPath)
          .doc(documentId)
          .snapshots()
          .map((doc) {
        if (!doc.exists) return null;
        try {
          return ServiceModel.fromJson({
            ...doc.data()!,
            'id': doc.id,
          });
        } catch (e, st) {
          throw FirestoreException(
            message: 'Failed to parse service data: $e',
            errorType: FirestoreErrorType.invalidData,
            stackTrace: st,
          );
        }
      });
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      if (e is FirestoreException) rethrow;
      throw FirestoreException(
        message: 'Failed to get service stream: $e',
        errorType: FirestoreErrorType.readError,
        stackTrace: st,
      );
    }
  }

  /// Get a service by ID
  Future<ServiceModel?> getService({
    required String collectionPath,
    required String documentId,
  }) async {
    try {
      final doc =
          await _firestore.collection(collectionPath).doc(documentId).get();
      if (!doc.exists) return null;
      try {
        return ServiceModel.fromJson({
          ...doc.data()!,
          'id': doc.id,
        });
      } catch (e, st) {
        throw FirestoreException(
          message: 'Failed to parse service data: $e',
          errorType: FirestoreErrorType.invalidData,
          stackTrace: st,
        );
      }
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      if (e is FirestoreException) rethrow;
      throw FirestoreException(
        message: 'Failed to get service: $e',
        errorType: FirestoreErrorType.readError,
        stackTrace: st,
      );
    }
  }

  /// Search services by name
  Future<List<ServiceModel>> searchServices({
    required String collectionPath,
    required String query,
    int limit = 10,
  }) async {
    try {
      final querySnapshot = await _firestore
          .collection(collectionPath)
          .where('name', isGreaterThanOrEqualTo: query)
          .where('name', isLessThan: '${query}z')
          .limit(limit)
          .get();

      return querySnapshot.docs.map((doc) {
        try {
          return ServiceModel.fromJson({
            ...doc.data(),
            'id': doc.id,
          });
        } catch (e, st) {
          throw FirestoreException(
            message: 'Failed to parse service data: $e',
            errorType: FirestoreErrorType.invalidData,
            stackTrace: st,
          );
        }
      }).toList();
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      if (e is FirestoreException) rethrow;
      throw FirestoreException(
        message: 'Failed to search services: $e',
        errorType: FirestoreErrorType.readError,
        stackTrace: st,
      );
    }
  }

  /// Create a new service
  Future<void> createService({
    required String collectionPath,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _firestore.collection(collectionPath).doc(documentId).set(data);
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      throw FirestoreException(
        message: 'Failed to create service: $e',
        errorType: FirestoreErrorType.addError,
        stackTrace: st,
      );
    }
  }

  /// Update an existing service
  Future<void> updateService({
    required String collectionPath,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _firestore.collection(collectionPath).doc(documentId).update(data);
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      throw FirestoreException(
        message: 'Failed to update service: $e',
        errorType: FirestoreErrorType.updateError,
        stackTrace: st,
      );
    }
  }

  /// Delete a service
  Future<void> deleteService({
    required String collectionPath,
    required String documentId,
  }) async {
    try {
      await _firestore.collection(collectionPath).doc(documentId).delete();
    } on FirebaseException catch (e, st) {
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      throw FirestoreException(
        message: 'Failed to delete service: $e',
        errorType: FirestoreErrorType.deleteError,
        stackTrace: st,
      );
    }
  }
}
