import 'package:business_invoice_generator_app/src/core/validators/email_validator.dart';
import 'package:business_invoice_generator_app/src/core/validators/phone_validator.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer.dart';
import 'package:business_invoice_generator_app/src/features/customer/domain/customer_exceptions.dart';

/// {@template customer_validator}
/// Validates customer data according to business rules.
///
/// Ensures that:
/// - Customer ID is not empty
/// - Name is not empty
/// - Address is not empty
/// - Email is valid
/// - Phone number (if provided) is valid
/// {@endtemplate}
class CustomerValidator {
  /// {@macro customer_validator}
  const CustomerValidator();

  /// Validates all customer fields.
  ///
  /// Throws [CustomerException] with a descriptive message if any validation fails.
  void validate(Customer customer) {
    validateId(customer.id);
    validateName(customer.name);
    validateAddress(customer.address);
    validateEmail(customer.email);
    validatePhoneNumber(customer.phoneNumber);
  }

  /// Validates the customer ID.
  ///
  /// The ID must not be empty after trimming whitespace.
  void validateId(String id) {
    if (id.trim().isEmpty) {
      throw CustomerException.invalidData(
        message: 'Customer ID cannot be empty',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the customer name.
  ///
  /// The name must not be empty after trimming whitespace.
  void validateName(String name) {
    if (name.trim().isEmpty) {
      throw CustomerException.invalidData(
        message: 'Customer name cannot be empty',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the customer address.
  ///
  /// The address must not be empty after trimming whitespace.
  void validateAddress(String address) {
    if (address.trim().isEmpty) {
      throw CustomerException.invalidData(
        message: 'Customer address cannot be empty',
        stackTrace: StackTrace.current,
      );
    }
  }

  /// Validates the customer email.
  ///
  /// Uses [EmailValidator] to ensure the email is in a valid format.
  void validateEmail(String email) {
    const EmailValidator().validate(email).fold(
          (failure) => throw CustomerException.invalidData(
            message: failure.message,
            stackTrace: StackTrace.current,
          ),
          (_) => null,
        );
  }

  /// Validates the customer phone number.
  ///
  /// The phone number is optional, but if provided, it must be in a valid format
  /// according to [PhoneValidator].
  void validatePhoneNumber(String? phoneNumber) {
    const PhoneValidator().validate(phoneNumber).fold(
          (failure) => throw CustomerException.invalidData(
            message: failure.message,
            stackTrace: StackTrace.current,
          ),
          (_) => null,
        );
  }
}
