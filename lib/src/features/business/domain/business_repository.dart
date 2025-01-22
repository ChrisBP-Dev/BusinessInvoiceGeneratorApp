import 'package:business_invoice_generator_app/src/core/services/storage_service/storage_service.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/business/data/business_firestore_service.dart';
import 'package:business_invoice_generator_app/src/features/business/data/firebase_business_repository_imp.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business_exceptions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'business_repository.g.dart';

/// Repository for managing business data
abstract class BusinessRepository {
  /// Save a business
  /// [userId] is used to create the correct path: users/{userId}/business/{businessId}
  Future<Either<BusinessException, Unit>> saveBusiness(
    Business business,
    UserID userId,
  );

  /// Update a business
  /// [userId] is used to create the correct path: users/{userId}/business/{businessId}
  Future<Either<BusinessException, Unit>> updateBusiness(
    Business business,
    UserID userId,
  );

  /// Delete a business
  /// [userId] is used to create the correct path: users/{userId}/business/{businessId}
  Future<Either<BusinessException, Unit>> deleteBusiness(
    String businessId,
    UserID userId,
  );

  // TODO(ChrisBP): Este método es parte de una funcionalidad no utilizada.
  // Se eliminará cuando se limpie el código de watchBusiness en las capas superiores.
  /// Watch a business
  /// [userId] is used to create the correct path: users/{userId}/business/{businessId}
  Stream<Either<BusinessException, Business?>> watchBusiness(
    String businessId,
    UserID userId,
  );

  /// Get all businesses for a user
  /// [userId] is used to create the correct path: users/{userId}/business
  Future<Either<BusinessException, List<Business>>> getBusinesses(
    UserID userId,
  );
}

/// Provider for [BusinessRepository]
@Riverpod(keepAlive: true)
BusinessRepository businessRepository(Ref ref) {
  return FirebaseBusinessRepositoryImp(
    service: ref.watch(businessFirestoreServiceProvider),
    storageService: ref.watch(storageServiceProvider),
  );
}
