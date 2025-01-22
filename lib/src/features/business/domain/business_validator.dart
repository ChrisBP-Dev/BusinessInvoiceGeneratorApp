import 'package:business_invoice_generator_app/src/core/validators/email_validator.dart';
import 'package:business_invoice_generator_app/src/core/validators/phone_validator.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business.dart';
import 'package:business_invoice_generator_app/src/features/business/domain/business_exceptions.dart';

/// {@template business_validator}
/// Validator for [Business]
/// Contains all validation logic for businesses
/// {@endtemplate}
class BusinessValidator {
  /// {@macro business_validator}
  const BusinessValidator();

  /// Validates a business
  /// Throws [BusinessException] if validation fails
  void validate(Business business) {
    validateId(business.id);
    validateName(business.companyName);
    validateAddress(business.address);
    validateEmail(business.email);
    validatePhoneNumber(business.phoneNumber);
    validateColor(business.colorHex);
  }

  /// Validates the business ID
  void validateId(String id) {
    if (id.trim().isEmpty) {
      throw BusinessException.invalidData(
        message: 'Business ID cannot be empty',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the business name
  void validateName(String name) {
    if (name.trim().isEmpty) {
      throw BusinessException.invalidData(
        message: 'Business name cannot be empty',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the business address
  void validateAddress(String address) {
    if (address.trim().isEmpty) {
      throw BusinessException.invalidData(
        message: 'Business address cannot be empty',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the business email
  void validateEmail(String email) {
    const EmailValidator().validate(email).fold(
          (failure) => throw BusinessException.invalidData(
            message: failure.message,
            stackTrace: StackTrace.current,
          ),
          (_) => null,
        );
  }

  /// Validates the business phone number
  void validatePhoneNumber(String? phoneNumber) {
    const PhoneValidator().validate(phoneNumber).fold(
          (failure) => throw BusinessException.invalidData(
            message: failure.message,
            stackTrace: StackTrace.current,
          ),
          (_) => null,
        );
  }

  /// Validates the business color hex code
  void validateColor(String colorHex) {
    if (!colorHex.startsWith('#')) {
      throw BusinessException.invalidData(
        message: 'Color hex code must start with #',
        stackTrace: StackTrace.current,
      );
    }

    final hexValue = colorHex.substring(1);
    if (!RegExp(r'^[0-9A-Fa-f]{6}$').hasMatch(hexValue)) {
      throw BusinessException.invalidData(
        message: 'Invalid color hex code format',
        stackTrace: StackTrace.current,
      );
    }
  }
}
