import 'package:business_invoice_generator_app/src/core/services/firestore_service/firestore_exception.dart';
import 'package:business_invoice_generator_app/src/features/auth/domain/app_user.dart';
import 'package:business_invoice_generator_app/src/features/service/data/service_firestore_service.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_validator.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/services_repository.dart';
import 'package:fpdart/fpdart.dart';

/// {@template firebase_service_repository}
/// Firebase implementation of the services repository
/// {@endtemplate}
class FirebaseServiceRepositoryImp implements ServicesRepository {
  /// {@macro firebase_service_repository}
  const FirebaseServiceRepositoryImp({
    required this.firestoreService,
    required this.servicesPath,
    ServiceValidator? validator,
  }) : _validator = validator ?? const ServiceValidator();

  /// Firestore service for service operations
  final ServiceFirestoreService firestoreService;

  /// Path for the services collection
  final String servicesPath;

  final ServiceValidator _validator;

  /// Builds the collection path for a specific user
  String collectionPath(UserID userID) {
    _validator.validateUserId(userID);
    return '/users/$userID/$servicesPath';
  }

  @override
  Stream<Either<ServiceException, List<ServiceModel>>> getServicesStream(
    UserID userID,
  ) async* {
    try {
      await for (final services in firestoreService.getServicesStream(
        collectionPath: collectionPath(userID),
      )) {
        yield right(services);
      }
    } on FirestoreException catch (e) {
      yield left(
        ServiceException.listFailed(
          message: e.message,
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Stream<Either<ServiceException, ServiceModel?>> watchServiceByID(
    UserID userID,
    ServiceID serviceID,
  ) async* {
    try {
      _validator.validateId(serviceID);
      await for (final service in firestoreService.getServiceStream(
        collectionPath: collectionPath(userID),
        documentId: serviceID,
      )) {
        yield right(service);
      }
    } on FirestoreException catch (e) {
      yield left(
        ServiceException.notFound(
          message: e.message,
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<ServiceException, ServiceModel?>> getServiceByID(
    UserID userID,
    ServiceID serviceID,
  ) async {
    try {
      _validator.validateId(serviceID);
      final service = await firestoreService.getService(
        collectionPath: collectionPath(userID),
        documentId: serviceID,
      );
      return right(service);
    } on FirestoreException catch (e) {
      return left(
        ServiceException.notFound(
          message: e.message,
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<ServiceException, List<ServiceModel>>> searchServicesByName(
    UserID userID,
    String query, {
    int limit = 10,
  }) async {
    try {
      final services = await firestoreService.searchServices(
        collectionPath: collectionPath(userID),
        query: query,
        limit: limit,
      );
      return right(services);
    } on FirestoreException catch (e) {
      return left(
        ServiceException.listFailed(
          message: e.message,
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<ServiceException, Unit>> createService(
    ServiceModel service,
    UserID userID,
  ) async {
    try {
      _validator.validate(service);
      await firestoreService.createService(
        collectionPath: collectionPath(userID),
        documentId: service.id,
        data: service.toJson(),
      );
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        ServiceException.createFailed(
          message: e.message,
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<ServiceException, Unit>> updateService(
    ServiceModel service,
    UserID userID,
  ) async {
    try {
      _validator.validate(service);
      await firestoreService.updateService(
        collectionPath: collectionPath(userID),
        documentId: service.id,
        data: service.toJson(),
      );
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        ServiceException.updateFailed(
          message: e.message,
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<ServiceException, Unit>> deleteService(
    ServiceModel service,
    UserID userID,
  ) async {
    try {
      _validator.validateId(service.id);
      await firestoreService.deleteService(
        collectionPath: collectionPath(userID),
        documentId: service.id,
      );
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        ServiceException.deleteFailed(
          message: e.message,
          stackTrace: e.stackTrace,
        ),
      );
    }
  }
}
