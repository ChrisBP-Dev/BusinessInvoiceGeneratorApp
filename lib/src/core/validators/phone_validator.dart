import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_validator.freezed.dart';

/// Represents all possible phone validation failures
@freezed
class PhoneValidationFailure with _$PhoneValidationFailure {
  const PhoneValidationFailure._();

  /// Phone number is empty
  const factory PhoneValidationFailure.empty() = _Empty;

  /// Phone number has invalid length
  const factory PhoneValidationFailure.invalidLength() = _InvalidLength;

  /// Phone number format is invalid
  const factory PhoneValidationFailure.invalidFormat() = _InvalidFormat;

  /// Phone number has invalid area code
  const factory PhoneValidationFailure.invalidAreaCode() = _InvalidAreaCode;

  String get message => when(
        empty: () => 'Phone number cannot be empty',
        invalidLength: () => 'Phone number must be 10 digits',
        invalidFormat: () => 'Invalid phone format. Use (XXX) XXX-XXXX',
        invalidAreaCode: () => 'Invalid area code',
      );
}

/// A phone number validator specifically for US phone numbers
class PhoneValidator {
  const PhoneValidator();

  /// Expected length for US phone numbers (without country code)
  static const int _requiredLength = 10;

  /// Validates a US phone number and returns Either a failure or the validated number
  Either<PhoneValidationFailure, String> validate(String? phone) {
    // Check for null or empty
    if (phone == null || phone.trim().isEmpty) {
      return left(const PhoneValidationFailure.empty());
    }

    // Remove all non-digit characters for validation
    final digitsOnly = phone.replaceAll(RegExp(r'\D'), '');

    // Remove country code if present
    final nationalNumber =
        digitsOnly.startsWith('1') ? digitsOnly.substring(1) : digitsOnly;

    // Check length (must be exactly 10 digits)
    if (nationalNumber.length != _requiredLength) {
      return left(const PhoneValidationFailure.invalidLength());
    }

    // Check if the format matches expected patterns
    if (!_isValidFormat(phone)) {
      return left(const PhoneValidationFailure.invalidFormat());
    }

    // Check area code
    if (!_isValidAreaCode(nationalNumber.substring(0, 3))) {
      return left(const PhoneValidationFailure.invalidAreaCode());
    }

    // If all checks pass, return normalized phone number
    return right(_formatPhoneNumber(nationalNumber));
  }

  /// Validates if the phone number format matches accepted patterns
  bool _isValidFormat(String phone) {
    // Accepts formats:
    // (XXX) XXX-XXXX
    // XXX-XXX-XXXX
    // XXX.XXX.XXXX
    // XXXXXXXXXX
    return RegExp(
      r'^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$',
    ).hasMatch(phone);
  }

  /// Validates if the area code is valid
  /// This es una implementación básica - idealmente usaríamos una lista completa
  bool _isValidAreaCode(String areaCode) {
    // Area codes cannot:
    // - Start with 0 or 1
    // - Have the same digit repeated 3 times
    // - End with 11
    final firstDigit = int.parse(areaCode[0]);
    if (firstDigit == 0 || firstDigit == 1) return false;

    if (areaCode[0] == areaCode[1] && areaCode[1] == areaCode[2]) return false;

    if (areaCode.endsWith('11')) return false;

    return true;
  }

  /// Formats the phone number in a standardized way
  String _formatPhoneNumber(String digits) {
    return '(${digits.substring(0, 3)}) ${digits.substring(3, 6)}-${digits.substring(6)}';
  }
}

/// Extension methods for easy phone validation
extension PhoneValidationX on String {
  /// Returns true if the string is a valid phone number
  bool get isValidPhone => const PhoneValidator().validate(this).isRight();

  /// Validates the phone number and returns Either a failure or the validated number
  Either<PhoneValidationFailure, String> validatePhone() =>
      const PhoneValidator().validate(this);
}
