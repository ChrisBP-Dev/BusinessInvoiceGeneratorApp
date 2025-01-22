import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/service/data/firebase_service_repository_imp.dart';
import 'package:business_invoice_generator_app/src/features/service/data/service_firestore_service.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services_repository.g.dart';

/// {@template services_repository}
/// Repository that handles service operations
/// {@endtemplate}
abstract class ServicesRepository {
  /// Gets a stream of services for a user
  Stream<Either<ServiceException, List<ServiceModel>>> getServicesStream(
    UserID userID,
  );

  /// Gets a stream of a specific service by ID
  Stream<Either<ServiceException, ServiceModel?>> watchServiceByID(
    UserID userID,
    ServiceID serviceID,
  );

  /// Creates a new service
  Future<Either<ServiceException, Unit>> createService(
    ServiceModel service,
    UserID userID,
  );

  /// Updates an existing service
  Future<Either<ServiceException, Unit>> updateService(
    ServiceModel service,
    UserID userID,
  );

  /// Deletes a service
  Future<Either<ServiceException, Unit>> deleteService(
    ServiceModel service,
    UserID userID,
  );

  /// Gets a service by ID
  Future<Either<ServiceException, ServiceModel?>> getServiceByID(
    UserID userID,
    ServiceID serviceID,
  );

  /// Searches services by name
  Future<Either<ServiceException, List<ServiceModel>>> searchServicesByName(
    UserID userID,
    String query, {
    int limit = 10,
  });
}

/// Provider for the Firestore service
@riverpod
ServiceFirestoreService serviceFirestoreService(Ref ref) {
  return ServiceFirestoreService(ref.watch(firebaseFirestoreProvider));
}

/// Provider for Firebase Firestore instance
@riverpod
FirebaseFirestore firebaseFirestore(Ref ref) {
  return FirebaseFirestore.instance;
}

/// {@template services_repository_provider}
/// Provider for the services repository
/// {@endtemplate}
@riverpod
ServicesRepository servicesRepository(Ref ref) {
  return FirebaseServiceRepositoryImp(
    firestoreService: ref.watch(serviceFirestoreServiceProvider),
    servicesPath: ServiceModel.collectionPath,
  );
}

/// Provider to get the stream of services
@riverpod
Stream<Either<ServiceException, List<ServiceModel>>> getServicesStream(
  Ref ref,
  UserID userID,
) {
  return ref.watch(servicesRepositoryProvider).getServicesStream(userID);
}

/// Provider to get a service by ID
@riverpod
Stream<Either<ServiceException, ServiceModel?>> getServiceByID(
  Ref ref,
  UserID userID,
  ServiceID id,
) {
  return ref.watch(servicesRepositoryProvider).watchServiceByID(userID, id);
}
