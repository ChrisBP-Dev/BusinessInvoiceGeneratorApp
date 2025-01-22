import 'dart:developer' as dev;
import 'package:business_invoice_generator_app/src/core/services/firestore_service/firestore_exception.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'business_firestore_service.g.dart';

class BusinessFirestoreService {
  BusinessFirestoreService(
    this._firestore,
  );

  final FirebaseFirestore _firestore;

  String _getPath(UserID userId) => 'users/$userId/${Business.businessPath}';

  Future<void> saveBusiness(Business business, UserID userId) async {
    try {
      dev.log(
        '🔥 Firestore - Saving business: ${business.id} for user: $userId',
      );
      await _firestore
          .collection(_getPath(userId))
          .doc(userId)
          .set(business.copyWith(id: userId).toJson());
      dev.log('🔥 Firestore - Business saved successfully');
    } on FirebaseException catch (e, st) {
      dev.log('🔥 Firestore - Error saving business: ${e.message}');
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      dev.log('🔥 Firestore - Error saving business: $e');
      throw FirestoreException(
        message: 'Error saving business: $e',
        errorType: FirestoreErrorType.addError,
        stackTrace: st,
      );
    }
  }

  Future<void> updateBusiness(Business business, UserID userId) async {
    try {
      dev.log(
        '🔥 Firestore - Updating business: ${business.id} for user: $userId',
      );
      await _firestore
          .collection(_getPath(userId))
          .doc(userId)
          .update(business.toJson());
      dev.log('🔥 Firestore - Business updated successfully');
    } on FirebaseException catch (e, st) {
      dev.log('🔥 Firestore - Error updating business: ${e.message}');
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      dev.log('🔥 Firestore - Error updating business: $e');
      throw FirestoreException(
        message: 'Error updating business: $e',
        errorType: FirestoreErrorType.updateError,
        stackTrace: st,
      );
    }
  }

  Future<void> deleteBusiness(String businessId, UserID userId) async {
    try {
      dev.log(
        '🔥 Firestore - Deleting business: $businessId for user: $userId',
      );
      await _firestore.collection(_getPath(userId)).doc(businessId).delete();
      dev.log('🔥 Firestore - Business deleted successfully');
    } on FirebaseException catch (e, st) {
      dev.log('🔥 Firestore - Error deleting business: ${e.message}');
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      dev.log('🔥 Firestore - Error deleting business: $e');
      throw FirestoreException(
        message: 'Error deleting business: $e',
        errorType: FirestoreErrorType.deleteError,
        stackTrace: st,
      );
    }
  }

  Stream<Business?> watchBusiness(String businessId, UserID userId) {
    try {
      dev.log(
        '🔥 Firestore - Watching business: $businessId for user: $userId',
      );
      return _firestore
          .collection(_getPath(userId))
          .doc(businessId)
          .snapshots()
          .map((snapshot) {
        if (!snapshot.exists) {
          dev.log('🔥 Firestore - Business not found');
          return null;
        }
        try {
          final data = snapshot.data()!;
          dev.log('🔥 Firestore - Business data: $data');
          return Business.fromJson(data);
        } catch (e, st) {
          dev.log('🔥 Firestore - Error parsing business data: $e');
          throw FirestoreException(
            message: 'Error parsing business data: $e',
            errorType: FirestoreErrorType.invalidData,
            stackTrace: st,
          );
        }
      }).handleError((Object? error, StackTrace stackTrace) {
        dev.log('🔥 Firestore - Error watching business: $error');
        throw FirestoreException(
          message: 'Error watching business: $error',
          errorType: FirestoreErrorType.readError,
          stackTrace: stackTrace,
        );
      });
    } on FirebaseException catch (e, st) {
      dev.log('🔥 Firestore - Firebase error: ${e.message}');
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      dev.log('🔥 Firestore - Error watching business: $e');
      throw FirestoreException(
        message: 'Error watching business: $e',
        errorType: FirestoreErrorType.readError,
        stackTrace: st,
      );
    }
  }

  Future<List<Business>> getBusinesses(UserID userId) async {
    try {
      dev.log('🔥 Firestore - Getting businesses for user: $userId');
      dev.log('🔥 Firestore - Path: ${_getPath(userId)}');

      final snapshot = await _firestore.collection(_getPath(userId)).get();
      dev.log('🔥 Firestore - Found ${snapshot.docs.length} documents');

      return snapshot.docs.map((doc) {
        try {
          final data = doc.data();
          dev.log('🔥 Firestore - Document data: $data');
          return Business.fromJson(data);
        } catch (e, st) {
          dev.log('🔥 Firestore - Error parsing business data: $e');
          throw FirestoreException(
            message: 'Error parsing business data: $e',
            errorType: FirestoreErrorType.invalidData,
            stackTrace: st,
          );
        }
      }).toList();
    } on FirebaseException catch (e, st) {
      dev.log('🔥 Firestore - Firebase error: ${e.message}');
      throw FirestoreException.fromFirebaseException(e, st);
    } catch (e, st) {
      dev.log('🔥 Firestore - Error getting businesses: $e');
      throw FirestoreException(
        message: 'Error getting businesses: $e',
        errorType: FirestoreErrorType.readError,
        stackTrace: st,
      );
    }
  }
}

@riverpod
BusinessFirestoreService businessFirestoreService(Ref ref) {
  return BusinessFirestoreService(
    FirebaseFirestore.instance,
  );
}
