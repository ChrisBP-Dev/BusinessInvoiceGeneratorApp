import 'package:business_invoice_generator_app/src/features/service/domain/service_exceptions.dart';
import 'package:business_invoice_generator_app/src/features/service/domain/service_model.dart';

/// {@template service_validator}
/// Validator for [ServiceModel]
/// Contains all validation logic for services
/// {@endtemplate}
class ServiceValidator {
  const ServiceValidator();

  /// Validates a service
  void validate(ServiceModel service) {
    validateId(service.id);
    validateName(service.name);
    validatePrice(service.price);
  }

  /// Validates the service name
  void validateName(String name) {
    if (name.trim().isEmpty) {
      throw const ServiceException.invalidData(
        message: 'Service name cannot be empty',
      );
    }
  }

  /// Validates the service price
  void validatePrice(double? price) {
    if (price != null && price < 0) {
      throw const ServiceException.invalidData(
        message: 'Price cannot be negative',
      );
    }
  }

  /// Validates service ID
  void validateId(String id) {
    if (id.isEmpty) {
      throw const ServiceException.invalidData(
        message: 'Service ID cannot be empty',
      );
    }
  }

  /// Validates user ID
  void validateUserId(String userId) {
    if (userId.isEmpty) {
      throw const ServiceException.unauthorized(
        message: 'User ID cannot be empty',
      );
    }
  }
}
