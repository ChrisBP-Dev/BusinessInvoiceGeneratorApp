import 'package:business_invoice_generator_app/src/core/services/firestore_service/firestore_exception.dart';
import 'package:business_invoice_generator_app/src/core/services/storage_service/storage_exceptions.dart';
import 'package:business_invoice_generator_app/src/core/services/storage_service/storage_service.dart';
import 'package:business_invoice_generator_app/src/features/business/data/business_firestore_service.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business_repository.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business_validator.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/file_and_path.dart';
import 'package:fpdart/fpdart.dart';

class FirebaseBusinessRepositoryImp implements BusinessRepository {
  FirebaseBusinessRepositoryImp({
    required BusinessFirestoreService service,
    required StorageService storageService,
    BusinessValidator? validator,
  })  : _service = service,
        _storageService = storageService,
        _validator = validator ?? const BusinessValidator();

  final BusinessFirestoreService _service;
  final StorageService _storageService;
  final BusinessValidator _validator;

  String _getPath(String userId) {
    _validator.validateId(userId);
    return '/users/$userId/${Business.businessPath}';
  }

  Future<Business> _processCompanyLogo(Business business, String userId) async {
    try {
      // Case 1: If logo is empty and there was a previous image, delete it
      if (business.companyLogo.isEmpty && business.companyLogo.hasRefPath) {
        await _storageService.deleteImage(business.companyLogo.refPath!);
        return business.copyWith(companyLogo: const FileAndPath());
      }

      // Case 2: If there is a new local file, process the new image
      if (business.companyLogo.hasLocalFile) {
        // If there is an existing image, delete it first
        if (business.companyLogo.hasRefPath) {
          await _storageService.deleteImage(business.companyLogo.refPath!);
        }

        // Upload the new image
        final refImg = '${_getPath(userId)}/image.webp';
        final newImage = FileAndPath(
          url: await _storageService.uploadImage(
            business.companyLogo.localFileCharCode!,
            refImg,
          ),
          refPath: refImg,
        );

        return business.copyWith(companyLogo: newImage);
      }

      // Case 3: No changes to image, keep existing
      return business;
    } on StorageException catch (e, st) {
      throw BusinessException.invalidData(
        message: 'Error processing company logo',
        stackTrace: st,
      );
    }
  }

  @override
  Future<Either<BusinessException, Unit>> saveBusiness(
    Business business,
    String userId,
  ) async {
    try {
      _validator.validate(business);
      final businessWithLogo = await _processCompanyLogo(business, userId);
      await _service.saveBusiness(businessWithLogo, userId);
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        BusinessException.invalidData(
          message: 'Error saving business',
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<BusinessException, Unit>> updateBusiness(
    Business business,
    String userId,
  ) async {
    try {
      _validator.validate(business);
      final businessWithLogo = await _processCompanyLogo(business, userId);
      await _service.updateBusiness(businessWithLogo, userId);
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        BusinessException.updateFailed(
          message: 'Error updating business',
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Future<Either<BusinessException, Unit>> deleteBusiness(
    String businessId,
    String userId,
  ) async {
    try {
      _validator.validateId(businessId);
      await _service.deleteBusiness(businessId, userId);
      return right(unit);
    } on FirestoreException catch (e) {
      return left(
        BusinessException.deleteFailed(
          message: 'Error deleting business',
          stackTrace: e.stackTrace,
        ),
      );
    }
  }

  @override
  Stream<Either<BusinessException, Business?>> watchBusiness(
    String businessId,
    String userId,
  ) {
    try {
      _validator.validateId(businessId);
      return _service
          .watchBusiness(businessId, userId)
          .map((business) => right<BusinessException, Business?>(business))
          .handleError(
        (Object error, StackTrace stackTrace) {
          if (error is FirestoreException) {
            return left<BusinessException, Business?>(
              BusinessException.invalidData(
                message: 'Error watching business',
                stackTrace: error.stackTrace,
              ),
            );
          }
          return left<BusinessException, Business?>(
            BusinessException.invalidData(
              message: 'Unexpected error watching business',
              stackTrace: stackTrace,
            ),
          );
        },
      );
    } on Exception catch (e, st) {
      return Stream.value(
        left(
          BusinessException.invalidData(
            message: 'Error initializing business watch',
            stackTrace: st,
          ),
        ),
      );
    }
  }

  @override
  Future<Either<BusinessException, List<Business>>> getBusinesses(
    String userId,
  ) async {
    try {
      final businesses = await _service.getBusinesses(userId);
      return right(businesses);
    } on FirestoreException catch (e) {
      return left(
        BusinessException.notFound(
          message: 'No businesses found',
          stackTrace: e.stackTrace,
        ),
      );
    } on Exception catch (e, st) {
      return left(
        BusinessException.invalidData(
          message: 'Error fetching businesses',
          stackTrace: st,
        ),
      );
    }
  }
}
